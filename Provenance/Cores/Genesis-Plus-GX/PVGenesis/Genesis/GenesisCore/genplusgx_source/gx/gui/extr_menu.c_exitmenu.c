
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GUI_DeleteMenu (int *) ;
 int GUI_FadeOut () ;
 int GUI_InitMenu (int *) ;
 int GUI_OptionWindow (int *,int ,char**,int) ;
 int SYS_HOTRESET ;
 int SYS_RETURNTOMENU ;
 int SYS_ResetSystem (int ,int ,int ) ;
 int SYS_SHUTDOWN ;
 int __lwp_thread_stopmultitasking (void (*) ()) ;
 int gxTextureClose (int *) ;
 int menu_main ;
 int osd_version ;
 int showcredits () ;
 int shutdown () ;
 int w_pointer ;

__attribute__((used)) static void exitmenu(void)
{
  char *items[3] =
  {
    "View Credits",



    "Reset System",

    "Return to Loader",
  };


  int maxitems = 2;
  u32 *sig = (u32*)0x80001800;
  void (*reload)() = (void(*)())0x80001800;




  if (sig[0] == 0x7c6000a6)

  {
    maxitems = 3;
  }


  switch (GUI_OptionWindow(&menu_main, osd_version, items, maxitems))
  {
    case 0:
      GUI_DeleteMenu(&menu_main);
      showcredits();
      GUI_InitMenu(&menu_main);
      break;

    case 1:



      GUI_DeleteMenu(&menu_main);
      GUI_FadeOut();
      shutdown();



      SYS_ResetSystem(SYS_HOTRESET,0,0);

      break;

    case 2:



      GUI_DeleteMenu(&menu_main);
      GUI_FadeOut();
      shutdown();
      SYS_ResetSystem(SYS_SHUTDOWN,0,0);
      __lwp_thread_stopmultitasking(*reload);
      break;

    default:
      break;
  }
}
