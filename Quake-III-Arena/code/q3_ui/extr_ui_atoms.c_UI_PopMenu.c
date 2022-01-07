
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menusp; int firstdraw; int * stack; int activemenu; } ;


 int CHAN_LOCAL_SOUND ;
 int UI_ForceMenuOff () ;
 int menu_out_sound ;
 int qtrue ;
 int trap_Error (char*) ;
 int trap_S_StartLocalSound (int ,int ) ;
 TYPE_1__ uis ;

void UI_PopMenu (void)
{
 trap_S_StartLocalSound( menu_out_sound, CHAN_LOCAL_SOUND );

 uis.menusp--;

 if (uis.menusp < 0)
  trap_Error ("UI_PopMenu: menu stack underflow");

 if (uis.menusp) {
  uis.activemenu = uis.stack[uis.menusp-1];
  uis.firstdraw = qtrue;
 }
 else {
  UI_ForceMenuOff ();
 }
}
