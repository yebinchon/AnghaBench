
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int fraction; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_8__ {int flags; scalar_t__ entitynum; int origin; int mins; } ;
typedef TYPE_2__ bot_goal_t ;
struct TYPE_9__ {double ltime; } ;
typedef TYPE_3__ aas_entityinfo_t ;


 int AAS_EntityInfo (scalar_t__,TYPE_3__*) ;
 double AAS_Time () ;
 TYPE_1__ AAS_Trace (int ,int *,int *,int ,int,int ) ;
 int CONTENTS_SOLID ;
 int GFL_ITEM ;
 int VectorAdd (int ,int ,int ) ;
 int VectorScale (int ,double,int ) ;
 int qfalse ;
 int qtrue ;

int BotItemGoalInVisButNotVisible(int viewer, vec3_t eye, vec3_t viewangles, bot_goal_t *goal)
{
 aas_entityinfo_t entinfo;
 bsp_trace_t trace;
 vec3_t middle;

 if (!(goal->flags & GFL_ITEM)) return qfalse;

 VectorAdd(goal->mins, goal->mins, middle);
 VectorScale(middle, 0.5, middle);
 VectorAdd(goal->origin, middle, middle);

 trace = AAS_Trace(eye, ((void*)0), ((void*)0), middle, viewer, CONTENTS_SOLID);

 if (trace.fraction >= 1)
 {


  if (goal->entitynum <= 0)
   return qfalse;


  AAS_EntityInfo(goal->entitynum, &entinfo);



  if (entinfo.ltime < AAS_Time() - 0.5)
   return qtrue;
 }
 return qfalse;
}
