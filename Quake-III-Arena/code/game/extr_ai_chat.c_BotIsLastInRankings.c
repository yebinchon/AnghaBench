
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int* persistant; } ;
typedef TYPE_2__ playerState_t ;
typedef int buf ;
struct TYPE_6__ {int* persistant; } ;
struct TYPE_8__ {TYPE_1__ cur_ps; } ;
typedef TYPE_3__ bot_state_t ;


 int BotAI_GetClientState (int,TYPE_2__*) ;
 scalar_t__ CS_PLAYERS ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 size_t PERS_SCORE ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int BotIsLastInRankings(bot_state_t *bs) {
 int i, score;
 char buf[MAX_INFO_STRING];
 static int maxclients;
 playerState_t ps;

 if (!maxclients)
  maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");

 score = bs->cur_ps.persistant[PERS_SCORE];
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  BotAI_GetClientState(i, &ps);
  if (score > ps.persistant[PERS_SCORE]) return qfalse;
 }
 return qtrue;
}
