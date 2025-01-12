;; Adds git commit hash to Emacs since default logic in version.el requires that Emacs be built from a git repository (or that we provide one for `git rev-parse' to execute in).

;; XXX: This _probably_ always runs, it might be prudent to load version.el from here and execute the command to determine the git sha and if thats nil we can be sure that prior logic did not succeed.
;; XXX: Is Emacs' build executing this twice..?
;; TODO: Append a `+patched' to the SHA hash if patchfiles are part of the Portfile for this configuration?
;; Only set if it hasn't been done yet (nil).
(unless emacs-repository-version
  (setq emacs-repository-version "__COMMIT_HASH__"))

(message "Repository version: %s" emacs-repository-version)
(message "Repository branch: %s" emacs-repository-branch)
