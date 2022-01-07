
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_13__ {int flags; size_t iteminfo; float weight; int number; scalar_t__ timeout; int entitynum; int goalareanum; int goalorigin; struct TYPE_13__* next; } ;
typedef TYPE_1__ levelitem_t ;
struct TYPE_14__ {size_t number; float respawntime; int maxs; int mins; } ;
typedef TYPE_2__ iteminfo_t ;
struct TYPE_15__ {TYPE_2__* iteminfo; } ;
typedef TYPE_3__ itemconfig_t ;
struct TYPE_16__ {int lastreachabilityarea; int* itemweightindex; int itemweightconfig; int client; } ;
typedef TYPE_4__ bot_goalstate_t ;
struct TYPE_17__ {int iteminfo; int flags; int number; int entitynum; int areanum; int maxs; int mins; int origin; } ;
typedef TYPE_5__ bot_goal_t ;
struct TYPE_18__ {scalar_t__ value; } ;


 int AAS_AreaReachability (int) ;
 int AAS_AreaTravelTimeToGoalArea (int,int ,int ,int) ;
 float AVOID_DEFAULT_TIME ;
 float AVOID_DROPPED_TIME ;
 float AVOID_MINIMUM_TIME ;
 int BotAddToAvoidGoals (TYPE_4__*,int ,float) ;
 float BotAvoidGoalTime (int,int ) ;
 TYPE_4__* BotGoalStateFromHandle (int) ;
 int BotPushGoal (int,TYPE_5__*) ;
 int BotReachabilityArea (int ,int ) ;
 int Com_Memset (TYPE_5__*,int ,int) ;
 float FuzzyWeight (int*,int ,int) ;
 float FuzzyWeightUndecided (int*,int ,int) ;
 int GFL_DROPPED ;
 int GFL_ITEM ;
 int GFL_ROAM ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TEAM ;
 int IFL_NOTBOT ;
 int IFL_NOTFREE ;
 int IFL_NOTSINGLE ;
 int IFL_NOTTEAM ;
 int IFL_ROAM ;
 float TRAVELTIME_SCALE ;
 int VectorCopy (int ,int ) ;
 TYPE_8__* droppedweight ;
 scalar_t__ g_gametype ;
 TYPE_3__* itemconfig ;
 TYPE_1__* levelitems ;
 int qfalse ;
 int qtrue ;

int BotChooseLTGItem(int goalstate, vec3_t origin, int *inventory, int travelflags)
{
 int areanum, t, weightnum;
 float weight, bestweight, avoidtime;
 iteminfo_t *iteminfo;
 itemconfig_t *ic;
 levelitem_t *li, *bestitem;
 bot_goal_t goal;
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs)
  return qfalse;
 if (!gs->itemweightconfig)
  return qfalse;

 areanum = BotReachabilityArea(origin, gs->client);

 if (!areanum || !AAS_AreaReachability(areanum))
 {

  areanum = gs->lastreachabilityarea;
 }

 gs->lastreachabilityarea = areanum;

 if (!areanum)
  return qfalse;

 ic = itemconfig;
 if (!itemconfig)
  return qfalse;

 bestweight = 0;
 bestitem = ((void*)0);
 Com_Memset(&goal, 0, sizeof(bot_goal_t));

 for (li = levelitems; li; li = li->next)
 {
  if (g_gametype == GT_SINGLE_PLAYER) {
   if (li->flags & IFL_NOTSINGLE)
    continue;
  }
  else if (g_gametype >= GT_TEAM) {
   if (li->flags & IFL_NOTTEAM)
    continue;
  }
  else {
   if (li->flags & IFL_NOTFREE)
    continue;
  }
  if (li->flags & IFL_NOTBOT)
   continue;

  if (!li->goalareanum)
   continue;

  if (!li->entitynum && !(li->flags & IFL_ROAM))
   continue;

  iteminfo = &ic->iteminfo[li->iteminfo];
  weightnum = gs->itemweightindex[iteminfo->number];
  if (weightnum < 0)
   continue;




  weight = FuzzyWeight(inventory, gs->itemweightconfig, weightnum);







  if (li->flags & IFL_ROAM) weight *= li->weight;

  if (weight > 0)
  {

   t = AAS_AreaTravelTimeToGoalArea(areanum, origin, li->goalareanum, travelflags);

   if (t > 0)
   {

    avoidtime = BotAvoidGoalTime(goalstate, li->number);
    if (avoidtime - t * 0.009 > 0)
     continue;

    weight /= (float) t * TRAVELTIME_SCALE;

    if (weight > bestweight)
    {
     bestweight = weight;
     bestitem = li;
    }
   }
  }
 }

 if (!bestitem)
 {
  return qfalse;
 }

 iteminfo = &ic->iteminfo[bestitem->iteminfo];
 VectorCopy(bestitem->goalorigin, goal.origin);
 VectorCopy(iteminfo->mins, goal.mins);
 VectorCopy(iteminfo->maxs, goal.maxs);
 goal.areanum = bestitem->goalareanum;
 goal.entitynum = bestitem->entitynum;
 goal.number = bestitem->number;
 goal.flags = GFL_ITEM;
 if (bestitem->timeout)
  goal.flags |= GFL_DROPPED;
 if (bestitem->flags & IFL_ROAM)
  goal.flags |= GFL_ROAM;
 goal.iteminfo = bestitem->iteminfo;

 if (bestitem->timeout)
 {
  avoidtime = AVOID_DROPPED_TIME;
 }
 else
 {
  avoidtime = iteminfo->respawntime;
  if (!avoidtime)
   avoidtime = AVOID_DEFAULT_TIME;
  if (avoidtime < AVOID_MINIMUM_TIME)
   avoidtime = AVOID_MINIMUM_TIME;
 }

 BotAddToAvoidGoals(gs, bestitem->number, avoidtime);

 BotPushGoal(goalstate, &goal);

 return qtrue;
}
