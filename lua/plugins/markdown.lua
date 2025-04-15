
-- Define color variables
-- These are the colors for the eldritch colorscheme
local color1_bg = '#f265b5'
local color2_bg = '#37f499'
local color3_bg = '#04d1f9'
local color4_bg = '#a48cf2'
local color5_bg = '#f1fc79'
local color6_bg = '#f7c67f'
local color_fg = '#323449'
-- local color_sign = "#ebfafa"

return {
  {
    'MeanderingProgrammer/render-markdown.nvim',

    opts = {},
    config = function()
      vim.treesitter.language.register('markdown', 'vimwiki')
      require('render-markdown').setup {
        file_types = { 'markdown', 'vimwiki' },
        heading = {
          -- sign = false,
          -- width = { "full", "block", "full", "block" },
          width = 'full',
          icons = { '󰎤 ', '󰎧 ', '󰎪 ', '󰎭 ', '󰎱 ', '󰎳 ' },
          position = 'inline',
          border = true,
          left_pad = 1,
          right_pad = 2,
          min_width = 30,
          -- Heading colors (when not hovered over), extends through the entire line
          vim.cmd(string.format([[highlight Headline1Bg guifg=%s guibg=%s]], color_fg, color1_bg)),
          vim.cmd(string.format([[highlight Headline2Bg guifg=%s guibg=%s]], color_fg, color2_bg)),
          vim.cmd(string.format([[highlight Headline3Bg guifg=%s guibg=%s]], color_fg, color3_bg)),
          vim.cmd(string.format([[highlight Headline4Bg guifg=%s guibg=%s]], color_fg, color4_bg)),
          vim.cmd(string.format([[highlight Headline5Bg guifg=%s guibg=%s]], color_fg, color5_bg)),
          vim.cmd(string.format([[highlight Headline6Bg guifg=%s guibg=%s]], color_fg, color6_bg)),

          -- Highlight for the heading and sign icons (symbol on the left)
          -- I have the sign disabled for now, so this makes no effect
          vim.cmd(string.format([[highlight Headline1Fg cterm=bold gui=bold guifg=%s]], color1_bg)),
          vim.cmd(string.format([[highlight Headline2Fg cterm=bold gui=bold guifg=%s]], color2_bg)),
          vim.cmd(string.format([[highlight Headline3Fg cterm=bold gui=bold guifg=%s]], color3_bg)),
          vim.cmd(string.format([[highlight Headline4Fg cterm=bold gui=bold guifg=%s]], color4_bg)),
          vim.cmd(string.format([[highlight Headline5Fg cterm=bold gui=bold guifg=%s]], color5_bg)),
          vim.cmd(string.format([[highlight Headline6Fg cterm=bold gui=bold guifg=%s]], color6_bg)),

          backgrounds = {
            'Headline1Bg',
            'Headline2Bg',
            'Headline3Bg',
            'Headline4Bg',
            'Headline5Bg',
            'Headline6Bg',
          },
          foregrounds = {
            'Headline1Fg',
            'Headline2Fg',
            'Headline3Fg',
            'Headline4Fg',
            'Headline5Fg',
            'Headline6Fg',
          },
        },
        indent = {
          enabled = true,
          per_level = 2,
        },
        bullet = { right_pad = 2 },
        -- bullet = {
        --   -- enabled = true,
        --   icons = { '● ', '○ ', '◆ ', '◇ ' },
        --   left_pad = 1,
        --   right_pad = 1,
        --   -- highlight = 'RenderMarkdownBullet',
        -- },
        code = {
          enabled = true,
          sign = true,
          style = 'full',
          position = 'right',
          language_pad = 1,
          disable_background = { 'diff' },
          width = 'block',
          left_pad = 2,
          right_pad = 10,
          min_width = 30,
          border = 'thin',
          above = '▄',
          below = '▀',
          highlight = 'RenderMarkdownCode',
          highlight_inline = 'RenderMarkdownCodeInline',
        },
      }
    end,
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  },
}
