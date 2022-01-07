
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info2 ;
typedef int info1 ;
struct TYPE_3__ {scalar_t__ client; } ;
typedef TYPE_1__ bot_state_t ;


 int CS_PLAYERS ;
 scalar_t__ GT_TEAM ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 scalar_t__ atoi (int ) ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 int trap_GetConfigstring (int,char*,int) ;

int BotSameTeam(bot_state_t *bs, int entnum) {
 char info1[1024], info2[1024];

 if (bs->client < 0 || bs->client >= MAX_CLIENTS) {

  return qfalse;
 }
 if (entnum < 0 || entnum >= MAX_CLIENTS) {

  return qfalse;
 }
 if ( gametype >= GT_TEAM ) {
  trap_GetConfigstring(CS_PLAYERS+bs->client, info1, sizeof(info1));
  trap_GetConfigstring(CS_PLAYERS+entnum, info2, sizeof(info2));

  if (atoi(Info_ValueForKey(info1, "t")) == atoi(Info_ValueForKey(info2, "t"))) return qtrue;
 }
 return qfalse;
}
