
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef int model ;
struct TYPE_7__ {int areanum; int origin; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_6__ {int entitynum; int maxs; int mins; int areanum; int origin; scalar_t__ flags; scalar_t__ number; } ;
struct TYPE_8__ {int shoot; TYPE_1__ goal; int target; } ;
typedef TYPE_3__ bot_activategoal_t ;


 int BotModelMinsMaxs (int,int ,int ,int ,int ) ;
 int ET_MOVER ;
 int MAX_INFO_STRING ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,double,int ) ;
 int VectorSet (int ,int,int,int) ;
 int atoi (char*) ;
 int qfalse ;
 int qtrue ;
 int trap_AAS_ValueForBSPEpairKey (int,char*,char*,int) ;

int BotFuncDoorActivateGoal(bot_state_t *bs, int bspent, bot_activategoal_t *activategoal) {
 int modelindex, entitynum;
 char model[MAX_INFO_STRING];
 vec3_t mins, maxs, origin, angles;


 trap_AAS_ValueForBSPEpairKey(bspent, "model", model, sizeof(model));
 if (!*model)
  return qfalse;
 modelindex = atoi(model+1);
 if (!modelindex)
  return qfalse;
 VectorClear(angles);
 entitynum = BotModelMinsMaxs(modelindex, ET_MOVER, 0, mins, maxs);

 VectorAdd(mins, maxs, origin);
 VectorScale(origin, 0.5, origin);
 VectorCopy(origin, activategoal->target);
 activategoal->shoot = qtrue;

 activategoal->goal.entitynum = entitynum;
 activategoal->goal.number = 0;
 activategoal->goal.flags = 0;
 VectorCopy(bs->origin, activategoal->goal.origin);
 activategoal->goal.areanum = bs->areanum;
 VectorSet(activategoal->goal.mins, -8, -8, -8);
 VectorSet(activategoal->goal.maxs, 8, 8, 8);
 return qtrue;
}
