-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Wysoki priorytet, aby załadować wcześnie
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        integrations = {
          nvimtree = true,
          telescope = true,
          treesitter = true,
        },
      }

      -- Wymuś ustawienie motywu
      vim.defer_fn(function()
        vim.cmd.colorscheme 'catppuccin'
      end, 0)
    end,
  },
}
