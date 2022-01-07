
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_9__ {scalar_t__ reachareanum; int* origin; int client; int lastreachnum; int jumpreach; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int* movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int* start; int* end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int AAS_JumpReachRunStart (TYPE_3__*,int*) ;
 scalar_t__ AAS_PointAreaNum (int*) ;
 int BotClearMoveResult (TYPE_2__*) ;
 double DotProduct (int*,int*) ;
 int EA_DelayedJump (int ) ;
 int EA_Jump (int ) ;
 int EA_Move (int ,int*,float) ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,float,int*,int*) ;
 float VectorNormalize (int*) ;
 int VectorSubtract (int*,int*,int*) ;

bot_moveresult_t BotTravel_Jump(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir, dir1, dir2, start, end, runstart;

 float dist1, dist2, speed;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 AAS_JumpReachRunStart(reach, runstart);

 hordir[0] = runstart[0] - reach->start[0];
 hordir[1] = runstart[1] - reach->start[1];
 hordir[2] = 0;
 VectorNormalize(hordir);

 VectorCopy(reach->start, start);
 start[2] += 1;
 VectorMA(reach->start, 80, hordir, runstart);

 for (dist1 = 0; dist1 < 80; dist1 += 10)
 {
  VectorMA(start, dist1+10, hordir, end);
  end[2] += 1;
  if (AAS_PointAreaNum(end) != ms->reachareanum) break;
 }
 if (dist1 < 80) VectorMA(reach->start, dist1, hordir, runstart);

 VectorSubtract(ms->origin, reach->start, dir1);
 dir1[2] = 0;
 dist1 = VectorNormalize(dir1);
 VectorSubtract(ms->origin, runstart, dir2);
 dir2[2] = 0;
 dist2 = VectorNormalize(dir2);

 if (DotProduct(dir1, dir2) < -0.8 || dist2 < 5)
 {

  hordir[0] = reach->end[0] - ms->origin[0];
  hordir[1] = reach->end[1] - ms->origin[1];
  hordir[2] = 0;
  VectorNormalize(hordir);

  if (dist1 < 24) EA_Jump(ms->client);
  else if (dist1 < 32) EA_DelayedJump(ms->client);
  EA_Move(ms->client, hordir, 600);

  ms->jumpreach = ms->lastreachnum;
 }
 else
 {

  hordir[0] = runstart[0] - ms->origin[0];
  hordir[1] = runstart[1] - ms->origin[1];
  hordir[2] = 0;
  VectorNormalize(hordir);

  if (dist2 > 80) dist2 = 80;
  speed = 400 - (400 - 5 * dist2);
  EA_Move(ms->client, hordir, speed);
 }
 VectorCopy(hordir, result.movedir);

 return result;
}
