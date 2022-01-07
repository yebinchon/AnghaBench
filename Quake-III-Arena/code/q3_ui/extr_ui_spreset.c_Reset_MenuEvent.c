
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
typedef TYPE_1__ menucommon_s ;


 scalar_t__ ID_NO ;
 int QM_ACTIVATED ;
 int UI_NewGame () ;
 int UI_PopMenu () ;
 int UI_SPLevelMenu () ;
 int trap_Cvar_SetValue (char*,int ) ;

void Reset_MenuEvent(void* ptr, int event) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 UI_PopMenu();

 if( ((menucommon_s*)ptr)->id == ID_NO ) {
  return;
 }


 UI_NewGame();
 trap_Cvar_SetValue( "ui_spSelection", 0 );
 UI_PopMenu();
 UI_SPLevelMenu();
}
