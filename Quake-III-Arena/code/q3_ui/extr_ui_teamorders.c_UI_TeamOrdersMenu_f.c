
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ clientNum; } ;
typedef TYPE_1__ uiClientState_t ;
typedef int info ;
struct TYPE_5__ {scalar_t__ gametype; } ;


 scalar_t__ CS_PLAYERS ;
 scalar_t__ CS_SERVERINFO ;
 scalar_t__ GT_TEAM ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int TEAM_SPECTATOR ;
 int UI_TeamOrdersMenu () ;
 void* atoi (int ) ;
 TYPE_3__ teamOrdersMenuInfo ;
 int trap_GetClientState (TYPE_1__*) ;
 int trap_GetConfigString (scalar_t__,char*,int) ;

void UI_TeamOrdersMenu_f( void ) {
 uiClientState_t cs;
 char info[MAX_INFO_STRING];
 int team;


 trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) );
 teamOrdersMenuInfo.gametype = atoi( Info_ValueForKey( info, "g_gametype" ) );
 if( teamOrdersMenuInfo.gametype < GT_TEAM ) {
  return;
 }


 trap_GetClientState( &cs );
 trap_GetConfigString( CS_PLAYERS + cs.clientNum, info, MAX_INFO_STRING );
 team = atoi( Info_ValueForKey( info, "t" ) );
 if( team == TEAM_SPECTATOR ) {
  return;
 }

 UI_TeamOrdersMenu();
}
