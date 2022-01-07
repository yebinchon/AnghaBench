
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct bot_avoidspot_s {int dummy; } ;
struct TYPE_8__ {int areanum; } ;
typedef TYPE_1__ bot_goal_t ;
struct TYPE_9__ {int areanum; scalar_t__ traveltime; int end; } ;
typedef TYPE_2__ aas_reachability_t ;
struct TYPE_10__ {int (* Print ) (int ,char*,int) ;} ;


 scalar_t__ AAS_AreaDoNotEnter (int) ;
 int AAS_AreaTravelTimeToGoalArea (int,int ,int,int) ;
 int AAS_NextAreaReachability (int,int) ;
 int AAS_ReachabilityFromNum (int,TYPE_2__*) ;
 float AAS_Time () ;
 int AVOIDREACH_TRIES ;
 scalar_t__ BotAvoidSpots (int ,TYPE_2__*,struct bot_avoidspot_s*,int) ;
 int BotValidTravel (int ,TYPE_2__*,int) ;
 int MAX_AVOIDREACH ;
 int MOVERESULT_BLOCKEDBYAVOIDSPOT ;
 int PRT_MESSAGE ;
 int TFL_DONOTENTER ;
 scalar_t__ bot_developer ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*,int) ;

int BotGetReachabilityToGoal(vec3_t origin, int areanum,
           int lastgoalareanum, int lastareanum,
           int *avoidreach, float *avoidreachtimes, int *avoidreachtries,
           bot_goal_t *goal, int travelflags, int movetravelflags,
           struct bot_avoidspot_s *avoidspots, int numavoidspots, int *flags)
{
 int i, t, besttime, bestreachnum, reachnum;
 aas_reachability_t reach;


 if (!areanum) return 0;

 if (AAS_AreaDoNotEnter(areanum) || AAS_AreaDoNotEnter(goal->areanum))
 {
  travelflags |= TFL_DONOTENTER;
  movetravelflags |= TFL_DONOTENTER;
 }

 besttime = 0;
 bestreachnum = 0;

 for (reachnum = AAS_NextAreaReachability(areanum, 0); reachnum;
  reachnum = AAS_NextAreaReachability(areanum, reachnum))
 {
  AAS_ReachabilityFromNum(reachnum, &reach);


  if (lastgoalareanum == goal->areanum && reach.areanum == lastareanum) continue;


  if (!BotValidTravel(origin, &reach, movetravelflags)) continue;

  t = AAS_AreaTravelTimeToGoalArea(reach.areanum, reach.end, goal->areanum, travelflags);

  if (!t) continue;

  if (BotAvoidSpots(origin, &reach, avoidspots, numavoidspots)) {
   if (flags) {
    *flags |= MOVERESULT_BLOCKEDBYAVOIDSPOT;
   }
   continue;
  }

  t += reach.traveltime;

  if (!besttime || t < besttime)
  {
   besttime = t;
   bestreachnum = reachnum;
  }
 }

 return bestreachnum;
}
