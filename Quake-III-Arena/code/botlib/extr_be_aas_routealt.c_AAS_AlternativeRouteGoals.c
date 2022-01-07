
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int midrangearea_t ;
struct TYPE_11__ {int areanum; int starttraveltime; int goaltraveltime; int extratraveltime; int origin; } ;
typedef TYPE_3__ aas_altroutegoal_t ;
struct TYPE_14__ {int numareas; TYPE_2__* areas; TYPE_1__* areasettings; } ;
struct TYPE_13__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_12__ {int starttime; int goaltime; int valid; } ;
struct TYPE_10__ {int center; } ;
struct TYPE_9__ {int contents; } ;


 int AAS_AltRoutingFloodCluster_r (int) ;
 int AAS_AreaReachability (int) ;
 int AAS_AreaTravelTimeToGoalArea (int,int *,int,int) ;
 int AAS_ShowAreaPolygons (int,int,int ) ;
 int ALTROUTEGOAL_ALL ;
 int ALTROUTEGOAL_CLUSTERPORTALS ;
 int ALTROUTEGOAL_VIEWPORTALS ;
 int AREACONTENTS_CLUSTERPORTAL ;
 int AREACONTENTS_VIEWPORTAL ;
 int Com_Memset (TYPE_4__*,int ,int) ;
 int Log_Write (char*,int,int) ;
 int PRT_MESSAGE ;
 int Sys_MilliSeconds () ;
 int VectorAdd (int *,int ,int *) ;
 int VectorClear (int *) ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int *) ;
 int VectorScale (int *,double,int *) ;
 int VectorSubtract (int *,int ,int *) ;
 TYPE_6__ aasworld ;
 TYPE_5__ botimport ;
 size_t* clusterareas ;
 TYPE_4__* midrangeareas ;
 int numclusterareas ;
 int qtrue ;
 int stub1 (int ,char*,int) ;

int AAS_AlternativeRouteGoals(vec3_t start, int startareanum, vec3_t goal, int goalareanum, int travelflags,
           aas_altroutegoal_t *altroutegoals, int maxaltroutegoals,
           int type)
{

 return 0;
}
