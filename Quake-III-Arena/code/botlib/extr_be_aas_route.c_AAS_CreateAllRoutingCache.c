
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numareas; int initialized; TYPE_1__* areas; } ;
struct TYPE_5__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_4__ {int center; } ;


 int AAS_AreaReachability (int) ;
 int AAS_AreaTravelTimeToGoalArea (int,int ,int,int ) ;
 int PRT_MESSAGE ;
 int TFL_DEFAULT ;
 TYPE_3__ aasworld ;
 TYPE_2__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*) ;

void AAS_CreateAllRoutingCache(void)
{
 int i, j, t;

 aasworld.initialized = qtrue;
 botimport.Print(PRT_MESSAGE, "AAS_CreateAllRoutingCache\n");
 for (i = 1; i < aasworld.numareas; i++)
 {
  if (!AAS_AreaReachability(i)) continue;
  for (j = 1; j < aasworld.numareas; j++)
  {
   if (i == j) continue;
   if (!AAS_AreaReachability(j)) continue;
   t = AAS_AreaTravelTimeToGoalArea(i, aasworld.areas[i].center, j, TFL_DEFAULT);

  }
 }
 aasworld.initialized = qfalse;
}
