
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int bot_state_t ;


 scalar_t__ BotSameTeam (int *,int) ;
 scalar_t__ CS_PLAYERS ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 int strlen (char*) ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int BotNumTeamMates(bot_state_t *bs) {
 int i, numplayers;
 char buf[MAX_INFO_STRING];
 static int maxclients;

 if (!maxclients)
  maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");

 numplayers = 0;
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  if (BotSameTeam(bs, i)) {
   numplayers++;
  }
 }
 return numplayers;
}
