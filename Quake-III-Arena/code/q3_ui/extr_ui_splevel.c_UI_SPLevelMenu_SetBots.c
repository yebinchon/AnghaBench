
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bots ;
struct TYPE_2__ {int numBots; char* selectedArenaInfo; char** botNames; scalar_t__* botPics; } ;


 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 scalar_t__ PlayerIconHandle (char*) ;
 int Q_CleanStr (char*) ;
 int Q_strncpyz (char*,char*,int) ;
 char* UI_GetBotInfoByName (char*) ;
 scalar_t__ currentSet ;
 TYPE_1__ levelMenuInfo ;
 scalar_t__ selectedArenaSet ;

__attribute__((used)) static void UI_SPLevelMenu_SetBots( void ) {
 char *p;
 char *bot;
 char *botInfo;
 char bots[MAX_INFO_STRING];

 levelMenuInfo.numBots = 0;
 if ( selectedArenaSet > currentSet ) {
  return;
 }

 Q_strncpyz( bots, Info_ValueForKey( levelMenuInfo.selectedArenaInfo, "bots" ), sizeof(bots) );

 p = &bots[0];
 while( *p && levelMenuInfo.numBots < 7 ) {

  while( *p && *p == ' ' ) {
   p++;
  }
  if( !p ) {
   break;
  }


  bot = p;


  while( *p && *p != ' ' ) {
   p++;
  }
  if( *p ) {
   *p++ = 0;
  }

  botInfo = UI_GetBotInfoByName( bot );
  if( botInfo ) {
   levelMenuInfo.botPics[levelMenuInfo.numBots] = PlayerIconHandle( Info_ValueForKey( botInfo, "model" ) );
   Q_strncpyz( levelMenuInfo.botNames[levelMenuInfo.numBots], Info_ValueForKey( botInfo, "name" ), 10 );
  }
  else {
   levelMenuInfo.botPics[levelMenuInfo.numBots] = 0;
   Q_strncpyz( levelMenuInfo.botNames[levelMenuInfo.numBots], bot, 10 );
  }
  Q_CleanStr( levelMenuInfo.botNames[levelMenuInfo.numBots] );
  levelMenuInfo.numBots++;
 }
}
