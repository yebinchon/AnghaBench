
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int baseBotNum; int numBots; int * botnames; scalar_t__* botClientNums; } ;


 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (int ) ;
 int Q_strncpyz (int ,int ,int) ;
 TYPE_1__ removeBotsMenuInfo ;
 int trap_GetConfigString (scalar_t__,char*,int) ;

__attribute__((used)) static void UI_RemoveBotsMenu_SetBotNames( void ) {
 int n;
 char info[MAX_INFO_STRING];

 for ( n = 0; (n < 7) && (removeBotsMenuInfo.baseBotNum + n < removeBotsMenuInfo.numBots); n++ ) {
  trap_GetConfigString( CS_PLAYERS + removeBotsMenuInfo.botClientNums[removeBotsMenuInfo.baseBotNum + n], info, MAX_INFO_STRING );
  Q_strncpyz( removeBotsMenuInfo.botnames[n], Info_ValueForKey( info, "n" ), sizeof(removeBotsMenuInfo.botnames[n]) );
  Q_CleanStr( removeBotsMenuInfo.botnames[n] );
 }

}
