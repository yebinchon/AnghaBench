
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
struct TYPE_3__ {scalar_t__ client; } ;
typedef TYPE_1__ bot_state_t ;


 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 scalar_t__ MAX_CLIENTS ;
 scalar_t__ TEAM_BLUE ;
 int TEAM_FREE ;
 scalar_t__ TEAM_RED ;
 scalar_t__ atoi (int ) ;
 int qfalse ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int BotTeam(bot_state_t *bs) {
 char info[1024];

 if (bs->client < 0 || bs->client >= MAX_CLIENTS) {

  return qfalse;
 }
 trap_GetConfigstring(CS_PLAYERS+bs->client, info, sizeof(info));

 if (atoi(Info_ValueForKey(info, "t")) == TEAM_RED) return TEAM_RED;
 else if (atoi(Info_ValueForKey(info, "t")) == TEAM_BLUE) return TEAM_BLUE;
 return TEAM_FREE;
}
