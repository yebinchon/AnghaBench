
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int info ;
struct TYPE_2__ {size_t numBots; int* botClientNums; } ;


 scalar_t__ CS_PLAYERS ;
 scalar_t__ CS_SERVERINFO ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int atoi (int ) ;
 TYPE_1__ removeBotsMenuInfo ;
 int trap_GetConfigString (scalar_t__,char*,int) ;

__attribute__((used)) static void UI_RemoveBotsMenu_GetBots( void ) {
 int numPlayers;
 int isBot;
 int n;
 char info[MAX_INFO_STRING];

 trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) );
 numPlayers = atoi( Info_ValueForKey( info, "sv_maxclients" ) );
 removeBotsMenuInfo.numBots = 0;

 for( n = 0; n < numPlayers; n++ ) {
  trap_GetConfigString( CS_PLAYERS + n, info, MAX_INFO_STRING );

  isBot = atoi( Info_ValueForKey( info, "skill" ) );
  if( !isBot ) {
   continue;
  }

  removeBotsMenuInfo.botClientNums[removeBotsMenuInfo.numBots] = n;
  removeBotsMenuInfo.numBots++;
 }
}
