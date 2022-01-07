
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_15__ {int moveflags; int client; scalar_t__* origin; scalar_t__ reachability_time; int entitynum; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_16__ {int flags; scalar_t__* movedir; int type; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_17__ {scalar_t__* start; scalar_t__* end; } ;
typedef TYPE_3__ aas_reachability_t ;
struct TYPE_18__ {int (* Print ) (int ,char*) ;} ;


 int BotCheckBarrierJump (TYPE_1__*,scalar_t__*,int) ;
 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int BotClearMoveResult (TYPE_2__*) ;
 int BotFuncBobStartEnd (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ BotOnMover (scalar_t__*,int ,TYPE_3__*) ;
 scalar_t__ DotProduct (scalar_t__*,scalar_t__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int MFL_SWIMMING ;
 int MOVERESULT_SWIMVIEW ;
 int MOVERESULT_WAITING ;
 int MoverBottomCenter (TYPE_3__*,scalar_t__*) ;
 int PRT_MESSAGE ;
 int RESULTTYPE_WAITFORFUNCBOBBING ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorLength (scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 TYPE_4__ botimport ;
 int qfalse ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;
 int stub4 (int ,char*) ;
 int stub5 (int ,char*) ;
 int stub6 (int ,char*) ;
 int stub7 (int ,char*) ;
 int stub8 (int ,char*) ;

bot_moveresult_t BotTravel_FuncBobbing(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t dir, dir1, dir2, hordir, bottomcenter, bob_start, bob_end, bob_origin;
 float dist, dist1, dist2, speed;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 BotFuncBobStartEnd(reach, bob_start, bob_end, bob_origin);

 if (BotOnMover(ms->origin, ms->entitynum, reach))
 {




  VectorSubtract(bob_origin, bob_end, dir);
  if (VectorLength(dir) < 24)
  {




   VectorSubtract(reach->end, ms->origin, hordir);
   hordir[2] = 0;
   VectorNormalize(hordir);
   if (!BotCheckBarrierJump(ms, hordir, 100))
   {
    EA_Move(ms->client, hordir, 400);
   }
   VectorCopy(hordir, result.movedir);
  }

  else
  {
   MoverBottomCenter(reach, bottomcenter);
   VectorSubtract(bottomcenter, ms->origin, hordir);
   hordir[2] = 0;
   dist = VectorNormalize(hordir);

   if (dist > 10)
   {




    if (dist > 100) dist = 100;
    speed = 400 - (400 - 4 * dist);

    EA_Move(ms->client, hordir, speed);
    VectorCopy(hordir, result.movedir);
   }
  }
 }
 else
 {




  VectorSubtract(reach->end, ms->origin, dir);
  dist = VectorLength(dir);
  if (dist < 64)
  {



   if (dist > 60) dist = 60;
   speed = 360 - (360 - 6 * dist);

   if ((ms->moveflags & MFL_SWIMMING) || !BotCheckBarrierJump(ms, dir, 50))
   {
    if (speed > 5) EA_Move(ms->client, dir, speed);
   }
   VectorCopy(dir, result.movedir);

   if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;

   ms->reachability_time = 0;
   return result;
  }

  VectorSubtract(reach->start, ms->origin, dir1);
  if (!(ms->moveflags & MFL_SWIMMING)) dir1[2] = 0;
  dist1 = VectorNormalize(dir1);

  VectorSubtract(bob_origin, bob_start, dir);
  if (VectorLength(dir) > 16)
  {



   dist = dist1;
   VectorCopy(dir1, dir);

   BotCheckBlocked(ms, dir, qfalse, &result);

   if (dist > 60) dist = 60;
   speed = 360 - (360 - 6 * dist);

   if (!(ms->moveflags & MFL_SWIMMING) && !BotCheckBarrierJump(ms, dir, 50))
   {
    if (speed > 5) EA_Move(ms->client, dir, speed);
   }
   VectorCopy(dir, result.movedir);

   if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;

   result.type = RESULTTYPE_WAITFORFUNCBOBBING;
   result.flags |= MOVERESULT_WAITING;
   return result;
  }

  MoverBottomCenter(reach, bottomcenter);
  VectorSubtract(bottomcenter, ms->origin, dir2);
  if (!(ms->moveflags & MFL_SWIMMING)) dir2[2] = 0;
  dist2 = VectorNormalize(dir2);



  if (dist1 < 20 || dist2 < dist1 || DotProduct(dir1, dir2) < 0)
  {



   dist = dist2;
   VectorCopy(dir2, dir);
  }
  else
  {



   dist = dist1;
   VectorCopy(dir1, dir);
  }

  BotCheckBlocked(ms, dir, qfalse, &result);

  if (dist > 60) dist = 60;
  speed = 400 - (400 - 6 * dist);

  if (!(ms->moveflags & MFL_SWIMMING) && !BotCheckBarrierJump(ms, dir, 50))
  {
   EA_Move(ms->client, dir, speed);
  }
  VectorCopy(dir, result.movedir);

  if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
 }
 return result;
}
