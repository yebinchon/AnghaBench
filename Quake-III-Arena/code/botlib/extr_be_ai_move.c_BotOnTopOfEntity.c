
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ vec3_t ;
struct TYPE_14__ {scalar_t__ ent; int startsolid; } ;
typedef TYPE_2__ bsp_trace_t ;
struct TYPE_15__ {int entitynum; int origin; int presencetype; } ;
typedef TYPE_3__ bot_movestate_t ;


 int AAS_PresenceTypeBoundingBox (int ,TYPE_1__,TYPE_1__) ;
 TYPE_2__ AAS_Trace (int ,TYPE_1__,TYPE_1__,TYPE_1__,int ,int) ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 scalar_t__ ENTITYNUM_NONE ;
 scalar_t__ ENTITYNUM_WORLD ;
 int VectorMA (int ,int,TYPE_1__,TYPE_1__) ;

int BotOnTopOfEntity(bot_movestate_t *ms)
{
 vec3_t mins, maxs, end, up = {0, 0, 1};
 bsp_trace_t trace;

 AAS_PresenceTypeBoundingBox(ms->presencetype, mins, maxs);
 VectorMA(ms->origin, -3, up, end);
 trace = AAS_Trace(ms->origin, mins, maxs, end, ms->entitynum, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
 if (!trace.startsolid && (trace.ent != ENTITYNUM_WORLD && trace.ent != ENTITYNUM_NONE) )
 {
  return trace.ent;
 }
 return -1;
}
