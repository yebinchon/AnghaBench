
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* persistant; } ;
typedef TYPE_1__ playerState_t ;
typedef int buf ;


 int BotAI_GetClientState (int,TYPE_1__*) ;
 scalar_t__ CS_PLAYERS ;
 int EasyClientName (int,char*,int) ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 size_t PERS_SCORE ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 int strlen (char*) ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

char *BotFirstClientInRankings(void) {
 int i, bestscore, bestclient;
 char buf[MAX_INFO_STRING];
 static char name[32];
 static int maxclients;
 playerState_t ps;

 if (!maxclients)
  maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");

 bestscore = -999999;
 bestclient = 0;
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  BotAI_GetClientState(i, &ps);
  if (ps.persistant[PERS_SCORE] > bestscore) {
   bestscore = ps.persistant[PERS_SCORE];
   bestclient = i;
  }
 }
 EasyClientName(bestclient, name, 32);
 return name;
}
