
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 scalar_t__ BotSameTeam (int *,int) ;
 scalar_t__ CS_PLAYERS ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 scalar_t__ strlen (char*) ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int NumPlayersOnSameTeam(bot_state_t *bs) {
 int i, num;
 char buf[MAX_INFO_STRING];
 static int maxclients;

 if (!maxclients)
  maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");

 num = 0;
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, MAX_INFO_STRING);
  if (strlen(buf)) {
   if (BotSameTeam(bs, i+1)) num++;
  }
 }
 return num;
}
