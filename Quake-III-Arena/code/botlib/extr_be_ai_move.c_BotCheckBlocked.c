
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_8__ {scalar_t__ ent; int startsolid; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_9__ {int entitynum; int origin; int presencetype; int areanum; } ;
typedef TYPE_2__ bot_movestate_t ;
struct TYPE_10__ {scalar_t__ blockentity; int flags; void* blocked; } ;
typedef TYPE_3__ bot_moveresult_t ;
struct TYPE_11__ {scalar_t__ value; } ;


 int AAS_AreaReachability (int ) ;
 int AAS_PresenceTypeBoundingBox (int ,int*,int*) ;
 TYPE_1__ AAS_Trace (int ,int*,int*,int*,int ,int) ;
 int CONTENTS_BODY ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 int DotProduct (int*,int*) ;
 scalar_t__ ENTITYNUM_NONE ;
 scalar_t__ ENTITYNUM_WORLD ;
 int MOVERESULT_ONTOPOFOBSTACLE ;
 int VectorMA (int ,int,int*,int*) ;
 double fabs (int ) ;
 void* qtrue ;
 TYPE_4__* sv_maxstep ;

void BotCheckBlocked(bot_movestate_t *ms, vec3_t dir, int checkbottom, bot_moveresult_t *result)
{
 vec3_t mins, maxs, end, up = {0, 0, 1};
 bsp_trace_t trace;


 AAS_PresenceTypeBoundingBox(ms->presencetype, mins, maxs);

 if (fabs(DotProduct(dir, up)) < 0.7)
 {
  mins[2] += sv_maxstep->value;
  maxs[2] -= 10;
 }
 VectorMA(ms->origin, 3, dir, end);
 trace = AAS_Trace(ms->origin, mins, maxs, end, ms->entitynum, CONTENTS_SOLID|CONTENTS_PLAYERCLIP|CONTENTS_BODY);

 if (!trace.startsolid && (trace.ent != ENTITYNUM_WORLD && trace.ent != ENTITYNUM_NONE) )
 {
  result->blocked = qtrue;
  result->blockentity = trace.ent;



 }

 else if (checkbottom && !AAS_AreaReachability(ms->areanum))
 {

  AAS_PresenceTypeBoundingBox(ms->presencetype, mins, maxs);
  VectorMA(ms->origin, -3, up, end);
  trace = AAS_Trace(ms->origin, mins, maxs, end, ms->entitynum, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
  if (!trace.startsolid && (trace.ent != ENTITYNUM_WORLD && trace.ent != ENTITYNUM_NONE) )
  {
   result->blocked = qtrue;
   result->blockentity = trace.ent;
   result->flags |= MOVERESULT_ONTOPOFOBSTACLE;



  }
 }
}
