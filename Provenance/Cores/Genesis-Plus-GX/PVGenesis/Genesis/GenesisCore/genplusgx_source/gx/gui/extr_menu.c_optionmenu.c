
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gui_menu ;


 int GUI_DeleteMenu (int *) ;
 int GUI_DrawMenuFX (int *,int,int) ;
 int GUI_InitMenu (int *) ;
 int GUI_RunMenu (int *) ;
 int config_save () ;
 int ctrlmenu () ;
 int menu_options ;
 int prefmenu () ;
 int soundmenu () ;
 int systemmenu () ;
 int videomenu () ;

__attribute__((used)) static void optionmenu(void)
{
  int ret, quit = 0;
  gui_menu *m = &menu_options;

  GUI_InitMenu(m);
  GUI_DrawMenuFX(m,30,0);

  while (quit == 0)
  {
    ret = GUI_RunMenu(m);

    switch (ret)
    {
      case 0:
        GUI_DeleteMenu(m);
        systemmenu();
        GUI_InitMenu(m);
        break;
      case 1:
        GUI_DeleteMenu(m);
        videomenu();
        GUI_InitMenu(m);
        break;
      case 2:
        GUI_DeleteMenu(m);
        soundmenu();
        GUI_InitMenu(m);
        break;
      case 3:
        GUI_DeleteMenu(m);
        ctrlmenu();
        GUI_InitMenu(m);
        break;
      case 4:
        GUI_DeleteMenu(m);
        prefmenu();
        GUI_InitMenu(m);
        break;
      case -1:
        quit = 1;
        break;
    }
  }

  config_save();
  GUI_DrawMenuFX(m,30,1);
  GUI_DeleteMenu(m);
}
