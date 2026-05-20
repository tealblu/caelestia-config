;;; matugen-theme.el --- Theme compiled dynamically by Caelestia

;; Version: 1.2
;; Keywords: faces

;;; Code:

(deftheme matugen "Theme compiled dynamically by Caelestia using Material You palettes.")

(custom-theme-set-faces
 'matugen
 ;; Basic faces
 `(default ((t (:background "#{{ background.hex }}" :foreground "#{{ onBackground.hex }}"))))
 `(cursor ((t (:inverse-video t)))) 
 `(highlight ((t (:background "#{{ secondaryContainer.hex }}" :weight bold))))
 `(region ((t (:background "#{{ outlineVariant.hex }}" :extend t))))
 `(secondary-selection ((t (:background "#{{ secondaryContainer.hex }}" :extend t))))
 `(isearch ((t (:background "#{{ error.hex }}" :foreground "#{{ background.hex }}" :weight bold))))
 `(lazy-highlight ((t (:background "#{{ secondaryContainer.hex }}"))))
 `(vertical-border ((t (:foreground "#{{ onSurfaceVariant.hex }}"))))
 `(fringe ((t (:background "#{{ background.hex }}" :foreground "#{{ onSurfaceVariant.hex }}"))))
 `(shadow ((t (:foreground "#{{ onSurfaceVariant.hex }}" :slant italic))))
 `(link ((t (:foreground "#{{ primary.hex }}" :underline t :slant italic))))
 `(link-visited ((t (:foreground "#{{ tertiary.hex }}" :underline t))))
 `(success ((t (:foreground "#{{ tertiary.hex }}"))))
 `(warning ((t (:foreground "#{{ secondary.hex }}"))))
 `(error ((t (:foreground "#{{ error.hex }}"))))
 
 ;; Font-lock (Syntax highlighting aligned with your Helix TOML rules)
 `(font-lock-builtin-face ((t (:foreground "#{{ error.hex }}"))))
 `(font-lock-comment-face ((t (:foreground "#{{ onSurfaceVariant.hex }}" :slant italic))))
 `(font-lock-comment-delimiter-face ((t (:foreground "#{{ onSurfaceVariant.hex }}"))))
 `(font-lock-constant-face ((t (:foreground "#{{ tertiary.hex }}"))))
 `(font-lock-doc-face ((t (:foreground "#{{ onSurfaceVariant.hex }}" :slant italic))))
 `(font-lock-function-name-face ((t (:foreground "#{{ primary.hex }}"))))
 `(font-lock-keyword-face ((t (:foreground "#{{ primary.hex }}" :slant italic)))) 
 `(font-lock-string-face ((t (:foreground "#{{ primary.hex }}"))))
 `(font-lock-type-face ((t (:foreground "#{{ secondary.hex }}"))))
 `(font-lock-variable-name-face ((t (:foreground "#{{ onBackground.hex }}"))))
 `(font-lock-warning-face ((t (:foreground "#{{ error.hex }}" :weight bold))))
 `(font-lock-preprocessor-face ((t (:foreground "#{{ primaryFixed.hex }}"))))

 ;; Mode line
 `(mode-line ((t (:background "#{{ background.hex }}" :foreground "#{{ onPrimaryContainer.hex }}" :box nil))))
 `(mode-line-inactive ((t (:background "#{{ background.hex }}" :foreground "#{{ onSurfaceVariant.hex }}" :box nil))))
 
 ;; Org / Markdown Markup Rules
 `(org-block ((t (:background "#{{ surfaceContainerLow.hex }}" :foreground "#{{ onTertiaryContainer.hex }}" :extend t :inherit fixed-pitch))))
 `(org-block-begin-line ((t (:background "#{{ surfaceContainerLow.hex }}" :foreground "#{{ onSurfaceVariant.hex }}" :extend t :slant italic :inherit fixed-pitch))))
 `(org-block-end-line ((t (:background "#{{ surfaceContainerLow.hex }}" :foreground "#{{ onSurfaceVariant.hex }}" :extend t :slant italic :inherit fixed-pitch))))
 `(org-code ((t (:background "#{{ surfaceContainerLow.hex }}" :foreground "#{{ onTertiaryContainer.hex }}" :inherit fixed-pitch))))
 
 ;; Headings aligned with your markup.heading.1-6 specs
 `(org-level-1 ((t (:foreground "#{{ error.hex }}" :weight bold :height 1.2))))
 `(org-level-2 ((t (:foreground "#{{ primary.hex }}" :weight bold :height 1.1))))
 `(org-level-3 ((t (:foreground "#{{ secondary.hex }}" :weight bold))))
 `(org-level-4 ((t (:foreground "#{{ tertiary.hex }}" :weight bold))))
 `(org-level-5 ((t (:foreground "#{{ primaryFixed.hex }}" :weight bold))))
 `(org-level-6 ((t (:foreground "#{{ onPrimaryFixedVariant.hex }}" :weight bold))))
 `(org-document-title ((t (:foreground "#{{ error.hex }}" :weight bold :height 1.3))))
 
 ;; Lists & Checkboxes
 `(org-list-dt ((t (:foreground "#{{ secondary.hex }}"))))
 `(org-checkbox ((t (:foreground "#{{ primaryFixed.hex }}" :weight bold :inherit fixed-pitch))))
 `(org-todo ((t (:foreground "#{{ error.hex }}" :weight bold))))
 `(org-done ((t (:foreground "#{{ primaryFixed.hex }}" :weight bold))))
 `(org-hide ((t (:foreground "#{{ background.hex }}"))))

 ;; Line numbers
 `(line-number ((t (:foreground "#{{ onSurfaceVariant.hex }}" :inherit fixed-pitch))))
 `(line-number-current-line ((t (:foreground "#{{ primaryFixed.hex }}" :weight bold :inherit fixed-pitch))))

 ;; Rainbow delimiters
 `(rainbow-delimiters-depth-1-face ((t (:foreground "#{{ primary.hex }}"))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground "#{{ secondary.hex }}"))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground "#{{ tertiary.hex }}"))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground "#{{ primaryFixed.hex }}"))))
 )

(with-eval-after-load 'org
  (setq org-hide-leading-stars t)
  (setq org-startup-indented t))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'matugen)
;;; matugen-theme.el ends here
