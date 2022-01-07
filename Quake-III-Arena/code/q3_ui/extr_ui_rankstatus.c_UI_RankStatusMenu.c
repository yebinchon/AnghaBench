
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int grank_status_t ;
struct TYPE_2__ {int menu; } ;
 int RankStatus_MenuInit () ;
 int UI_ForceMenuOff () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_rankstatus ;
 char* s_rankstatus_message ;
 int s_status ;
 int trap_CL_UI_RankUserReset () ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;

void UI_RankStatusMenu( void ) {

 s_status = (grank_status_t)trap_Cvar_VariableValue("client_status");

 switch( s_status )
 {
 case 133:
  return;
 case 130:

  return;
 case 131:

  s_rankstatus_message = "Username unavailable";
  break;
 case 136:
  s_rankstatus_message = "Invalid password";
  break;
 case 128:
  s_rankstatus_message = "Timed out";
  break;
 case 132:
  s_rankstatus_message = "No membership";
  break;
 case 134:
  s_rankstatus_message = "Validation failed";
  break;
 case 135:
  s_rankstatus_message = "Error";
  break;
 case 129:
 case 137:
  UI_ForceMenuOff();
  return;
 default:
  return;
 }
 RankStatus_MenuInit();
 trap_CL_UI_RankUserReset();
 UI_PushMenu ( &s_rankstatus.menu );
}
