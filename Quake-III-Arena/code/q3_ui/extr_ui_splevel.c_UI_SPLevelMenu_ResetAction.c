
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_NewGame () ;
 int UI_PopMenu () ;
 int UI_SPLevelMenu () ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void UI_SPLevelMenu_ResetAction( qboolean result ) {
 if( !result ) {
  return;
 }


 UI_NewGame();
 trap_Cvar_SetValue( "ui_spSelection", -4 );


 UI_PopMenu();
 UI_SPLevelMenu();
}
