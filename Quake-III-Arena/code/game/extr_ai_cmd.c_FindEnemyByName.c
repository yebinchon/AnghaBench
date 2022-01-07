
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int bot_state_t ;


 scalar_t__ BotSameTeam (int *,int) ;
 int ClientName (int,char*,int) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 int Q_stricmp (char*,char*) ;
 scalar_t__ stristr (char*,char*) ;
 int trap_Cvar_VariableIntegerValue (char*) ;

int FindEnemyByName(bot_state_t *bs, char *name) {
 int i;
 char buf[MAX_INFO_STRING];
 static int maxclients;

 if (!maxclients)
  maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  if (BotSameTeam(bs, i)) continue;
  ClientName(i, buf, sizeof(buf));
  if (!Q_stricmp(buf, name)) return i;
 }
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  if (BotSameTeam(bs, i)) continue;
  ClientName(i, buf, sizeof(buf));
  if (stristr(buf, name)) return i;
 }
 return -1;
}
