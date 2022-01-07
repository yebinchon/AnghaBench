
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bots ;
struct TYPE_4__ {scalar_t__ gametype; char** playerNameBuffers; TYPE_1__* playerType; int mapnamebuffer; } ;
struct TYPE_3__ {int curvalue; } ;


 scalar_t__ GT_TEAM ;
 char* Info_ValueForKey (char const*,char*) ;
 int MAX_INFO_STRING ;
 int PLAYER_SLOTS ;
 int Q_strncpyz (char*,char*,int) ;
 char* UI_GetArenaInfoByMap (int ) ;
 char* UI_GetBotInfoByName (char*) ;
 TYPE_2__ s_serveroptions ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void ServerOptions_InitBotNames( void ) {
 int count;
 int n;
 const char *arenaInfo;
 const char *botInfo;
 char *p;
 char *bot;
 char bots[MAX_INFO_STRING];

 if( s_serveroptions.gametype >= GT_TEAM ) {
  Q_strncpyz( s_serveroptions.playerNameBuffers[1], "grunt", 16 );
  Q_strncpyz( s_serveroptions.playerNameBuffers[2], "major", 16 );
  if( s_serveroptions.gametype == GT_TEAM ) {
   Q_strncpyz( s_serveroptions.playerNameBuffers[3], "visor", 16 );
  }
  else {
   s_serveroptions.playerType[3].curvalue = 2;
  }
  s_serveroptions.playerType[4].curvalue = 2;
  s_serveroptions.playerType[5].curvalue = 2;

  Q_strncpyz( s_serveroptions.playerNameBuffers[6], "sarge", 16 );
  Q_strncpyz( s_serveroptions.playerNameBuffers[7], "grunt", 16 );
  Q_strncpyz( s_serveroptions.playerNameBuffers[8], "major", 16 );
  if( s_serveroptions.gametype == GT_TEAM ) {
   Q_strncpyz( s_serveroptions.playerNameBuffers[9], "visor", 16 );
  }
  else {
   s_serveroptions.playerType[9].curvalue = 2;
  }
  s_serveroptions.playerType[10].curvalue = 2;
  s_serveroptions.playerType[11].curvalue = 2;

  return;
 }

 count = 1;


 arenaInfo = UI_GetArenaInfoByMap( s_serveroptions.mapnamebuffer );


 Q_strncpyz( bots, Info_ValueForKey( arenaInfo, "bots" ), sizeof(bots) );
 p = &bots[0];
 while( *p && count < PLAYER_SLOTS ) {

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
  bot = Info_ValueForKey( botInfo, "name" );

  Q_strncpyz( s_serveroptions.playerNameBuffers[count], bot, sizeof(s_serveroptions.playerNameBuffers[count]) );
  count++;
 }


 for( n = count; n < PLAYER_SLOTS; n++ ) {
  strcpy( s_serveroptions.playerNameBuffers[n], "--------" );
 }


 for( ;count < 8; count++ ) {
  s_serveroptions.playerType[count].curvalue = 0;
 }


 for( ;count < PLAYER_SLOTS; count++ ) {
  if( s_serveroptions.playerType[count].curvalue == 1 ) {
   s_serveroptions.playerType[count].curvalue = 2;
  }
 }
}
