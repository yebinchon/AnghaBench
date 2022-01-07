
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int s ;
struct TYPE_4__ {int * maxs; int * mins; int * origin; int number; int iteminfo; int flags; int entitynum; int areanum; } ;
struct TYPE_5__ {TYPE_1__ lastgoal_teamgoal; int lastgoal_teammate; int lastgoal_ltgtype; int lastgoal_decisionmaker; int client; } ;
typedef TYPE_2__ bot_state_t ;


 int MAX_STRING_CHARS ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int trap_Cvar_VariableStringBuffer (char const*,char*,int) ;
 char* va (char*,int ) ;

void BotReadSessionData(bot_state_t *bs) {
 char s[MAX_STRING_CHARS];
 const char *var;

 var = va( "botsession%i", bs->client );
 trap_Cvar_VariableStringBuffer( var, s, sizeof(s) );

 sscanf(s,
   "%i %i %i %i %i %i %i %i"
   " %f %f %f"
   " %f %f %f"
   " %f %f %f",
  &bs->lastgoal_decisionmaker,
  &bs->lastgoal_ltgtype,
  &bs->lastgoal_teammate,
  &bs->lastgoal_teamgoal.areanum,
  &bs->lastgoal_teamgoal.entitynum,
  &bs->lastgoal_teamgoal.flags,
  &bs->lastgoal_teamgoal.iteminfo,
  &bs->lastgoal_teamgoal.number,
  &bs->lastgoal_teamgoal.origin[0],
  &bs->lastgoal_teamgoal.origin[1],
  &bs->lastgoal_teamgoal.origin[2],
  &bs->lastgoal_teamgoal.mins[0],
  &bs->lastgoal_teamgoal.mins[1],
  &bs->lastgoal_teamgoal.mins[2],
  &bs->lastgoal_teamgoal.maxs[0],
  &bs->lastgoal_teamgoal.maxs[1],
  &bs->lastgoal_teamgoal.maxs[2]
  );
}
