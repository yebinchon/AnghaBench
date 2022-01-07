
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;


 int EXEC_APPEND ;






 int QM_ACTIVATED ;
 int UI_ForceMenuOff () ;
 int UI_LoginMenu () ;
 int UI_SetupMenu () ;
 int UI_SignupMenu () ;
 int trap_CL_UI_RankUserRequestLogout () ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static void Rankings_MenuEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 131:
  UI_LoginMenu();
  break;

 case 130:

  trap_CL_UI_RankUserRequestLogout();
  UI_ForceMenuOff();
  break;

 case 133:
  UI_SignupMenu();
  break;

 case 128:
  trap_Cmd_ExecuteText( EXEC_APPEND, "cmd rank_spectate\n" );
  UI_ForceMenuOff();
  break;

 case 129:
  UI_SetupMenu();
  break;

 case 132:
  trap_Cmd_ExecuteText( EXEC_APPEND, "disconnect\n" );
  UI_ForceMenuOff();
  break;

 }
}
