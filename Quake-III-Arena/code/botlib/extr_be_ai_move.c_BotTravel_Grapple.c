
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_19__ {scalar_t__* endpos; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_20__ {int moveflags; float lastgrappledist; double grapplevisible_time; int reachareanum; scalar_t__ reachability_time; scalar_t__* origin; int client; int entitynum; int viewoffset; int * viewangles; } ;
typedef TYPE_2__ bot_movestate_t ;
struct TYPE_21__ {int movedir; int failure; int * ideal_viewangles; int flags; int weapon; } ;
typedef TYPE_3__ bot_moveresult_t ;
struct TYPE_22__ {int end; int start; } ;
typedef TYPE_4__ aas_reachability_t ;
struct TYPE_27__ {int (* DebugLineCreate ) () ;int (* Print ) (int ,char*) ;int (* DebugLineShow ) (int,int ,int ,int ) ;} ;
struct TYPE_26__ {int string; } ;
struct TYPE_25__ {int string; } ;
struct TYPE_24__ {scalar_t__ value; } ;
struct TYPE_23__ {int value; } ;


 int AAS_PointAreaNum (scalar_t__*) ;
 double AAS_Time () ;
 TYPE_1__ AAS_Trace (scalar_t__*,int *,int *,int ,int ,int ) ;
 int AngleDiff (int ,int ) ;
 int BotCheckBlocked (TYPE_2__*,scalar_t__*,int ,TYPE_3__*) ;
 int BotClearMoveResult (TYPE_3__*) ;
 int CONTENTS_SOLID ;
 int EA_Attack (int ) ;
 int EA_Command (int ,int ) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int GrappleState (TYPE_2__*,TYPE_4__*) ;
 int LINECOLOR_BLUE ;
 int MFL_ACTIVEGRAPPLE ;
 int MFL_GRAPPLERESET ;
 int MFL_SWIMMING ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 int Vector2Angles (scalar_t__*,int *) ;
 int VectorAdd (scalar_t__*,int ,scalar_t__*) ;
 int VectorCopy (scalar_t__*,int ) ;
 int VectorLength (scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSubtract (int ,scalar_t__*,scalar_t__*) ;
 TYPE_9__ botimport ;
 TYPE_8__* cmd_grappleoff ;
 TYPE_7__* cmd_grappleon ;
 int fabs (int ) ;
 TYPE_6__* offhandgrapple ;
 int qtrue ;
 int stub1 () ;
 int stub2 (int,int ,int ,int ) ;
 int stub3 (int ,char*) ;
 int stub4 (int ,char*) ;
 int stub5 (int ,char*) ;
 int stub6 (int ,char*) ;
 int stub7 (int ,char*) ;
 TYPE_5__* weapindex_grapple ;

bot_moveresult_t BotTravel_Grapple(bot_movestate_t *ms, aas_reachability_t *reach)
{
 bot_moveresult_t result;
 float dist, speed;
 vec3_t dir, viewdir, org;
 int state, areanum;
 bsp_trace_t trace;







 BotClearMoveResult(&result);

 if (ms->moveflags & MFL_GRAPPLERESET)
 {
  if (offhandgrapple->value)
   EA_Command(ms->client, cmd_grappleoff->string);
  ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
  return result;
 }

 if (!(int) offhandgrapple->value)
 {
  result.weapon = weapindex_grapple->value;
  result.flags |= MOVERESULT_MOVEMENTWEAPON;
 }

 if (ms->moveflags & MFL_ACTIVEGRAPPLE)
 {




  state = GrappleState(ms, reach);

  VectorSubtract(reach->end, ms->origin, dir);
  dir[2] = 0;
  dist = VectorLength(dir);


  if (state && dist < 48)
  {
   if (ms->lastgrappledist - dist < 1)
   {



    if (offhandgrapple->value)
     EA_Command(ms->client, cmd_grappleoff->string);
    ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
    ms->moveflags |= MFL_GRAPPLERESET;
    ms->reachability_time = 0;
    return result;
   }
  }


  else if (!state || (state == 2 && dist > ms->lastgrappledist - 2))
  {
   if (ms->grapplevisible_time < AAS_Time() - 0.4)
   {



    if (offhandgrapple->value)
     EA_Command(ms->client, cmd_grappleoff->string);
    ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
    ms->moveflags |= MFL_GRAPPLERESET;
    ms->reachability_time = 0;
    return result;
   }
  }
  else
  {
   ms->grapplevisible_time = AAS_Time();
  }

  if (!(int) offhandgrapple->value)
  {
   EA_Attack(ms->client);
  }

  ms->lastgrappledist = dist;
 }
 else
 {




  ms->grapplevisible_time = AAS_Time();

  VectorSubtract(reach->start, ms->origin, dir);
  if (!(ms->moveflags & MFL_SWIMMING)) dir[2] = 0;
  VectorAdd(ms->origin, ms->viewoffset, org);
  VectorSubtract(reach->end, org, viewdir);

  dist = VectorNormalize(dir);
  Vector2Angles(viewdir, result.ideal_viewangles);
  result.flags |= MOVERESULT_MOVEMENTVIEW;

  if (dist < 5 &&
   fabs(AngleDiff(result.ideal_viewangles[0], ms->viewangles[0])) < 2 &&
   fabs(AngleDiff(result.ideal_viewangles[1], ms->viewangles[1])) < 2)
  {




   VectorAdd(ms->origin, ms->viewoffset, org);
   trace = AAS_Trace(org, ((void*)0), ((void*)0), reach->end, ms->entitynum, CONTENTS_SOLID);
   VectorSubtract(reach->end, trace.endpos, dir);
   if (VectorLength(dir) > 16)
   {
    result.failure = qtrue;
    return result;
   }

   if (offhandgrapple->value)
   {
    EA_Command(ms->client, cmd_grappleon->string);
   }
   else
   {
    EA_Attack(ms->client);
   }
   ms->moveflags |= MFL_ACTIVEGRAPPLE;
   ms->lastgrappledist = 999999;
  }
  else
  {
   if (dist < 70) speed = 300 - (300 - 4 * dist);
   else speed = 400;

   BotCheckBlocked(ms, dir, qtrue, &result);

   EA_Move(ms->client, dir, speed);
   VectorCopy(dir, result.movedir);
  }

  areanum = AAS_PointAreaNum(ms->origin);
  if (areanum && areanum != ms->reachareanum) ms->reachability_time = 0;
 }
 return result;
}
