
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef double* vec3_t ;
struct TYPE_20__ {int areanum; double* origin; } ;
typedef TYPE_3__ bot_goal_t ;
struct TYPE_21__ {double* end; int areanum; } ;
typedef TYPE_4__ aas_reachability_t ;
struct TYPE_26__ {int (* DebugLineCreate ) () ;int (* DebugLineShow ) (int,double*,int ,int ) ;int (* Print ) (int ,char*,double,double,double,int) ;} ;
struct TYPE_25__ {int goalareanum; double* goalorigin; } ;
struct TYPE_18__ {int type; scalar_t__ dist; int normal; } ;
struct TYPE_24__ {double fraction; int ent; TYPE_1__ plane; int endpos; scalar_t__ exp_dist; } ;
struct TYPE_23__ {int maxs; int mins; int origin; } ;
struct TYPE_22__ {int ent; } ;
struct TYPE_19__ {int contents; } ;
struct TYPE_17__ {TYPE_6__* entities; scalar_t__ faces; TYPE_2__* areasettings; int loaded; } ;


 double AAS_AreaCluster (int) ;
 int AAS_AreaTravelTimeToGoalArea (int,double*,int,int) ;
 int AAS_ClearShownDebugLines () ;
 int AAS_ClearShownPolygons () ;
 int AAS_DrawPlaneCross (int ,int ,scalar_t__,int ,int ) ;
 int AAS_FloodAreas (double*) ;
 double AAS_PointPresenceType (double*) ;
 int AAS_ReachabilityFromNum (int,TYPE_4__*) ;
 int AAS_ShowAreaPolygons (int,int,int) ;
 int AAS_ShowBoundingBox (int ,int ,int ) ;
 int AAS_ShowFace (scalar_t__) ;
 int AAS_ShowReachability (TYPE_4__*) ;
 int AAS_ShowReachableAreas (int) ;
 TYPE_7__ AAS_Trace (double*,double*,double*,double*,int,int ) ;
 TYPE_7__ AAS_Trace2 (double*,double*,double*,double*,int,int ) ;
 scalar_t__ AAS_TraceEndFace (TYPE_5__*) ;
 int AREACONTENTS_CLUSTERPORTAL ;
 int AREACONTENTS_DONOTENTER ;
 int AREACONTENTS_JUMPPAD ;
 int AREACONTENTS_LAVA ;
 int AREACONTENTS_MOVER ;
 int AREACONTENTS_SLIME ;
 int AREACONTENTS_VIEWPORTAL ;
 int AREACONTENTS_WATER ;
 int AngleVectors (double*,double*,double*,int *) ;
 int BotFuzzyPointReachabilityArea (double*) ;
 int BotGetReachabilityToGoal (double*,int,int,int,int*,float*,int*,TYPE_3__*,int,int,int *,int ,int*) ;
 int LINECOLOR_BLUE ;
 int LINECOLOR_GREEN ;
 int LINECOLOR_RED ;
 int LINECOLOR_YELLOW ;
 int LibVarGetValue (char*) ;
 int MASK_PLAYERSOLID ;
 int MAX_AVOIDREACH ;
 int PRT_MESSAGE ;
 int TFL_DEFAULT ;
 int TFL_FUNCBOB ;
 int TFL_ROCKETJUMP ;
 int VectorClear (double*) ;
 int VectorCopy (double*,double*) ;
 int VectorMA (double*,int,double*,double*) ;
 TYPE_10__ aasworld ;
 TYPE_9__ botimport ;
 TYPE_8__ botlibglobals ;
 TYPE_7__ bsptrace ;
 TYPE_6__* ent ;
 scalar_t__ face ;
 int stub1 () ;
 int stub10 (int ,char*) ;
 int stub11 (int ,char*) ;
 int stub12 (int ,char*) ;
 int stub13 (int ,char*) ;
 int stub14 (int ,char*) ;
 int stub15 (int ,char*) ;
 int stub16 (int ,char*,int,int ) ;
 int stub17 (int ,char*,double,double,double,int) ;
 int stub18 () ;
 int stub19 (int,double*,int ,int ) ;
 int stub2 (int ,char*,int,int ) ;
 int stub20 (int,double*,int ,int ) ;
 int stub3 (int ,char*,double,double,double) ;
 int stub4 (int ,char*,int,double,double) ;
 int stub5 (int ,char*) ;
 int stub6 (int ,char*) ;
 int stub7 (int ,char*) ;
 int stub8 (int ,char*) ;
 int stub9 (int ,char*) ;
 TYPE_5__ trace ;

int BotExportTest(int parm0, char *parm1, vec3_t parm2, vec3_t parm3)
{
 return 0;
}
