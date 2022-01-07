
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * maxs; int * mins; int * origin; int number; int iteminfo; int flags; int entitynum; int areanum; } ;
struct TYPE_5__ {int client; TYPE_1__ lastgoal_teamgoal; int lastgoal_teammate; int lastgoal_ltgtype; int lastgoal_decisionmaker; } ;
typedef TYPE_2__ bot_state_t ;


 int trap_Cvar_Set (char const*,char const*) ;
 char* va (char*,int ,...) ;

void BotWriteSessionData(bot_state_t *bs) {
 const char *s;
 const char *var;

 s = va(
   "%i %i %i %i %i %i %i %i"
   " %f %f %f"
   " %f %f %f"
   " %f %f %f",
  bs->lastgoal_decisionmaker,
  bs->lastgoal_ltgtype,
  bs->lastgoal_teammate,
  bs->lastgoal_teamgoal.areanum,
  bs->lastgoal_teamgoal.entitynum,
  bs->lastgoal_teamgoal.flags,
  bs->lastgoal_teamgoal.iteminfo,
  bs->lastgoal_teamgoal.number,
  bs->lastgoal_teamgoal.origin[0],
  bs->lastgoal_teamgoal.origin[1],
  bs->lastgoal_teamgoal.origin[2],
  bs->lastgoal_teamgoal.mins[0],
  bs->lastgoal_teamgoal.mins[1],
  bs->lastgoal_teamgoal.mins[2],
  bs->lastgoal_teamgoal.maxs[0],
  bs->lastgoal_teamgoal.maxs[1],
  bs->lastgoal_teamgoal.maxs[2]
  );

 var = va( "botsession%i", bs->client );

 trap_Cvar_Set( var, s );
}
