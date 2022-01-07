
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int client; int velocity; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {scalar_t__* movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {scalar_t__* end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotAirControl (int ,int ,scalar_t__*,scalar_t__*,float*) ;
 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int BotClearMoveResult (TYPE_2__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorMA (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSubtract (scalar_t__*,int ,scalar_t__*) ;
 int qtrue ;

bot_moveresult_t BotFinishTravel_WalkOffLedge(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t dir, hordir, end, v;
 float dist, speed;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 VectorSubtract(reach->end, ms->origin, dir);
 BotCheckBlocked(ms, dir, qtrue, &result);

 VectorSubtract(reach->end, ms->origin, v);
 v[2] = 0;
 dist = VectorNormalize(v);
 if (dist > 16) VectorMA(reach->end, 16, v, end);
 else VectorCopy(reach->end, end);

 if (!BotAirControl(ms->origin, ms->velocity, end, hordir, &speed))
 {

  VectorCopy(dir, hordir);
  hordir[2] = 0;

  dist = VectorNormalize(hordir);
  speed = 400;
 }

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
