
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_3__ {scalar_t__* mins; scalar_t__* maxs; int origin; } ;
typedef TYPE_1__ bot_goal_t ;


 int AAS_PresenceTypeBoundingBox (int ,scalar_t__*,scalar_t__*) ;
 int PRESENCE_NORMAL ;
 int VectorAdd (scalar_t__*,int ,scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int qfalse ;
 int qtrue ;

int BotTouchingGoal(vec3_t origin, bot_goal_t *goal)
{
 int i;
 vec3_t boxmins, boxmaxs;
 vec3_t absmins, absmaxs;
 vec3_t safety_maxs = {0, 0, 0};
 vec3_t safety_mins = {0, 0, 0};

 AAS_PresenceTypeBoundingBox(PRESENCE_NORMAL, boxmins, boxmaxs);
 VectorSubtract(goal->mins, boxmaxs, absmins);
 VectorSubtract(goal->maxs, boxmins, absmaxs);
 VectorAdd(absmins, goal->origin, absmins);
 VectorAdd(absmaxs, goal->origin, absmaxs);

 VectorSubtract(absmaxs, safety_maxs, absmaxs);
 VectorSubtract(absmins, safety_mins, absmins);

 for (i = 0; i < 3; i++)
 {
  if (origin[i] < absmins[i] || origin[i] > absmaxs[i]) return qfalse;
 }
 return qtrue;
}
