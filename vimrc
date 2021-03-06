" =======================================
" Initially based on/forked from: Jeremy Mack (@mutewinter)
" [http://github.com/luan/vimfiles]
" Maintained By: Luan Santos (GitHub: @luan)
" =======================================

if !has('nvim')
  set nocompatible
endif

silent! source ~/.vimrc.local.before

runtime! Plug.vim

runtime! config/basic.vim
runtime! config/bindings.vim
runtime! config/colors.vim

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

runtime! config/plugin/ack.vim
runtime! config/plugin/airline.vim
runtime! config/plugin/autoclose.vim
runtime! config/plugin/commentary.vim
runtime! config/plugin/fugitive.vim
runtime! config/plugin/livedown.vim
runtime! config/plugin/multicursor.vim
runtime! config/plugin/nerdtree.vim
runtime! config/plugin/rainbow.vim
runtime! config/plugin/signify.vim
runtime! config/plugin/tagbar.vim
runtime! config/plugin/ultisnips.vim
runtime! config/plugin/undotree.vim

if has('gui_running')
  runtime! config/plugin/ctrlp.vim
else
  runtime! config/plugin/fzf.vim
end

runtime! config/plugin/neomake.vim

if has('nvim')
  runtime! config/plugin/nvim/deoplete.vim
else
  runtime! config/plugin/neocomplete.vim
endif

" ----------------------------------------
" Language Configuration
" ----------------------------------------

runtime! config/lang/polyglot.vim
runtime! config/lang/elm.vim
runtime! config/lang/golang.vim
runtime! config/lang/ruby.vim
runtime! config/lang/rust.vim
runtime! config/lang/yaml.vim
runtime! config/lang/crontab.vim

" ----------------------------------------
" Lib load path
" ----------------------------------------

runtime! lib/functions.vim
runtime! lib/autocommands.vim
runtime! lib/watchforchanges.vim

silent! source ~/.vimrc.local

