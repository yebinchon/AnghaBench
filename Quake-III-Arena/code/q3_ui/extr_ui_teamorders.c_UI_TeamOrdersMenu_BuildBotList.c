
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clientNum; } ;
typedef TYPE_1__ uiClientState_t ;
typedef int info ;
struct TYPE_5__ {int numBots; int * botNames; void* gametype; int * bots; } ;


 scalar_t__ CS_PLAYERS ;
 scalar_t__ CS_SERVERINFO ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (int ) ;
 int Q_strncpyz (int ,char*,int) ;
 char TEAM_SPECTATOR ;
 void* atoi (char*) ;
 TYPE_3__ teamOrdersMenuInfo ;
 int trap_GetClientState (TYPE_1__*) ;
 int trap_GetConfigString (scalar_t__,char*,int) ;

__attribute__((used)) static void UI_TeamOrdersMenu_BuildBotList( void ) {
 uiClientState_t cs;
 int numPlayers;
 int isBot;
 int n;
 char playerTeam;
 char botTeam;
 char info[MAX_INFO_STRING];

 for( n = 0; n < 9; n++ ) {
  teamOrdersMenuInfo.bots[n] = teamOrdersMenuInfo.botNames[n];
 }

 trap_GetClientState( &cs );

 Q_strncpyz( teamOrdersMenuInfo.botNames[0], "Everyone", 16 );
 teamOrdersMenuInfo.numBots = 1;

 trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) );
 numPlayers = atoi( Info_ValueForKey( info, "sv_maxclients" ) );
 teamOrdersMenuInfo.gametype = atoi( Info_ValueForKey( info, "g_gametype" ) );

 for( n = 0; n < numPlayers && teamOrdersMenuInfo.numBots < 9; n++ ) {
  trap_GetConfigString( CS_PLAYERS + n, info, MAX_INFO_STRING );

  playerTeam = TEAM_SPECTATOR;

  if( n == cs.clientNum ) {
   playerTeam = *Info_ValueForKey( info, "t" );
   continue;
  }

  isBot = atoi( Info_ValueForKey( info, "skill" ) );
  if( !isBot ) {
   continue;
  }

  botTeam = *Info_ValueForKey( info, "t" );
  if( botTeam != playerTeam ) {
   continue;
  }

  Q_strncpyz( teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.numBots], Info_ValueForKey( info, "n" ), 16 );
  Q_CleanStr( teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.numBots] );
  teamOrdersMenuInfo.numBots++;
 }
}
