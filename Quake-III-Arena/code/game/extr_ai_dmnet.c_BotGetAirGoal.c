
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {int* endpos; scalar_t__ fraction; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_8__ {int* origin; int entitynum; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_9__ {int* origin; int areanum; int* mins; int* maxs; scalar_t__ entitynum; scalar_t__ iteminfo; scalar_t__ number; int flags; } ;
typedef TYPE_3__ bot_goal_t ;


 int BotAI_Trace (TYPE_1__*,int*,int*,int*,int*,int ,int) ;
 int BotPointAreaNum (int*) ;
 int CONTENTS_LAVA ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int GFL_AIR ;
 int VectorCopy (int*,int*) ;
 int qfalse ;
 int qtrue ;

int BotGetAirGoal(bot_state_t *bs, bot_goal_t *goal) {
 bsp_trace_t bsptrace;
 vec3_t end, mins = {-15, -15, -2}, maxs = {15, 15, 2};
 int areanum;


 VectorCopy(bs->origin, end);
 end[2] += 1000;
 BotAI_Trace(&bsptrace, bs->origin, mins, maxs, end, bs->entitynum, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);

 VectorCopy(bsptrace.endpos, end);
 BotAI_Trace(&bsptrace, end, mins, maxs, bs->origin, bs->entitynum, CONTENTS_WATER|CONTENTS_SLIME|CONTENTS_LAVA);

 if (bsptrace.fraction > 0) {
  areanum = BotPointAreaNum(bsptrace.endpos);
  if (areanum) {
   VectorCopy(bsptrace.endpos, goal->origin);
   goal->origin[2] -= 2;
   goal->areanum = areanum;
   goal->mins[0] = -15;
   goal->mins[1] = -15;
   goal->mins[2] = -1;
   goal->maxs[0] = 15;
   goal->maxs[1] = 15;
   goal->maxs[2] = 1;
   goal->flags = GFL_AIR;
   goal->number = 0;
   goal->iteminfo = 0;
   goal->entitynum = 0;
   return qtrue;
  }
 }
 return qfalse;
}
