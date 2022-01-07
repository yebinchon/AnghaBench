
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_6__ {scalar_t__ ent; int allsolid; int startsolid; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_7__ {int facenum; } ;
typedef TYPE_2__ aas_reachability_t ;
struct TYPE_8__ {int (* Print ) (int ,char*,int) ;} ;


 int AAS_BSPModelMinsMaxsOrigin (int,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int AAS_EntityModelNum (scalar_t__) ;
 int AAS_OriginOfMoverWithModelNum (int,scalar_t__*) ;
 TYPE_1__ AAS_Trace (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int,int) ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 scalar_t__ ENTITYNUM_NONE ;
 int PRT_MESSAGE ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 TYPE_3__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,int) ;

int BotOnMover(vec3_t origin, int entnum, aas_reachability_t *reach)
{
 int i, modelnum;
 vec3_t mins, maxs, modelorigin, org, end;
 vec3_t angles = {0, 0, 0};
 vec3_t boxmins = {-16, -16, -8}, boxmaxs = {16, 16, 8};
 bsp_trace_t trace;

 modelnum = reach->facenum & 0x0000FFFF;

 AAS_BSPModelMinsMaxsOrigin(modelnum, angles, mins, maxs, ((void*)0));

 if (!AAS_OriginOfMoverWithModelNum(modelnum, modelorigin))
 {
  botimport.Print(PRT_MESSAGE, "no entity with model %d\n", modelnum);
  return qfalse;
 }

 for (i = 0; i < 2; i++)
 {
  if (origin[i] > modelorigin[i] + maxs[i] + 16) return qfalse;
  if (origin[i] < modelorigin[i] + mins[i] - 16) return qfalse;
 }

 VectorCopy(origin, org);
 org[2] += 24;
 VectorCopy(origin, end);
 end[2] -= 48;

 trace = AAS_Trace(org, boxmins, boxmaxs, end, entnum, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
 if (!trace.startsolid && !trace.allsolid)
 {

  if (trace.ent != ENTITYNUM_NONE && AAS_EntityModelNum(trace.ent) == modelnum)
  {
   return qtrue;
  }
 }
 return qfalse;
}
