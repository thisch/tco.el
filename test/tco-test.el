;;; tco-test.el --- Tests for tco.el -*- lexical-binding: t -*-

;;; Code:
(require 'ert)
(require 'tco)

(defun-tco tco-sum (n &optional accum)
  (setq accum (or accum 0))
  (if (zerop n)
      accum
    (tco-sum (1- n) (+ accum n))))

(ert-deftest tco-readme-test ()
  "Ensure the example in the readme works as claimed."
  (let ((num 1000))
    (should (> num max-lisp-eval-depth))
    (tco-sum num)))

;;; tco-test.el ends here
