
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clientNum; } ;
typedef TYPE_1__ uiClientState_t ;
typedef int info ;
struct TYPE_5__ {int playerNumber; size_t playerCount; size_t myTeamCount; int* teamClientNums; int * teamNames; void* teamLeader; int * playerNames; } ;


 int CS_PLAYERS ;
 int CS_SERVERINFO ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int MAX_NAME_LENGTH ;
 int Q_CleanStr (int ) ;
 int Q_strncpyz (int ,int ,int ) ;
 void* atoi (int ) ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_Cvar_VariableValue (char*) ;
 int trap_GetClientState (TYPE_1__*) ;
 int trap_GetConfigString (int,char*,int) ;
 TYPE_2__ uiInfo ;
 int va (char*,int) ;

__attribute__((used)) static void UI_BuildPlayerList() {
 uiClientState_t cs;
 int n, count, team, team2, playerTeamNumber;
 char info[MAX_INFO_STRING];

 trap_GetClientState( &cs );
 trap_GetConfigString( CS_PLAYERS + cs.clientNum, info, MAX_INFO_STRING );
 uiInfo.playerNumber = cs.clientNum;
 uiInfo.teamLeader = atoi(Info_ValueForKey(info, "tl"));
 team = atoi(Info_ValueForKey(info, "t"));
 trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) );
 count = atoi( Info_ValueForKey( info, "sv_maxclients" ) );
 uiInfo.playerCount = 0;
 uiInfo.myTeamCount = 0;
 playerTeamNumber = 0;
 for( n = 0; n < count; n++ ) {
  trap_GetConfigString( CS_PLAYERS + n, info, MAX_INFO_STRING );

  if (info[0]) {
   Q_strncpyz( uiInfo.playerNames[uiInfo.playerCount], Info_ValueForKey( info, "n" ), MAX_NAME_LENGTH );
   Q_CleanStr( uiInfo.playerNames[uiInfo.playerCount] );
   uiInfo.playerCount++;
   team2 = atoi(Info_ValueForKey(info, "t"));
   if (team2 == team) {
    Q_strncpyz( uiInfo.teamNames[uiInfo.myTeamCount], Info_ValueForKey( info, "n" ), MAX_NAME_LENGTH );
    Q_CleanStr( uiInfo.teamNames[uiInfo.myTeamCount] );
    uiInfo.teamClientNums[uiInfo.myTeamCount] = n;
    if (uiInfo.playerNumber == n) {
     playerTeamNumber = uiInfo.myTeamCount;
    }
    uiInfo.myTeamCount++;
   }
  }
 }

 if (!uiInfo.teamLeader) {
  trap_Cvar_Set("cg_selectedPlayer", va("%d", playerTeamNumber));
 }

 n = trap_Cvar_VariableValue("cg_selectedPlayer");
 if (n < 0 || n > uiInfo.myTeamCount) {
  n = 0;
 }
 if (n < uiInfo.myTeamCount) {
  trap_Cvar_Set("cg_selectedPlayerName", uiInfo.teamNames[n]);
 }
}
