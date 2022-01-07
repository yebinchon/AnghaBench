
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gui_menu ;
struct TYPE_2__ {int l_device; } ;


 int FileSelector (int) ;
 int GUI_DeleteMenu (int *) ;
 int GUI_DrawMenuFX (int *,int,int) ;
 int GUI_InitMenu (int *) ;
 int GUI_RunMenu (int *) ;
 int OpenDirectory (int ,int) ;
 int TYPE_RECENT ;
 TYPE_1__ config ;
 int menu_load ;

__attribute__((used)) static int loadgamemenu ()
{
  int ret, filetype;
  gui_menu *m = &menu_load;
  GUI_InitMenu(m);
  GUI_DrawMenuFX(m,30,0);

  while (1)
  {
    ret = GUI_RunMenu(m);

    switch (ret)
    {

      case -1:
        GUI_DrawMenuFX(m,30,1);
        GUI_DeleteMenu(m);
        return 0;


      default:
      {

        filetype = ret - 1;


        if (ret > 0)
        {
          ret = OpenDirectory(config.l_device, filetype);
        }
        else
        {
          ret = OpenDirectory(TYPE_RECENT, filetype);
        }

        if (ret)
        {
          GUI_DeleteMenu(m);
          if (FileSelector(filetype))
          {

            return 1;
          }
          GUI_InitMenu(m);
        }
        break;
      }
    }
  }

  return 0;
}
