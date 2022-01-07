
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_8__ {int client; scalar_t__* origin; int jumpreach; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_10__ {scalar_t__* start; scalar_t__* end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotClearMoveResult (TYPE_2__*) ;
 double DotProduct (scalar_t__*,scalar_t__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorNormalize (scalar_t__*) ;

bot_moveresult_t BotFinishTravel_Jump(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir, hordir2;
 float speed, dist;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 if (!ms->jumpreach) return result;

 hordir[0] = reach->end[0] - ms->origin[0];
 hordir[1] = reach->end[1] - ms->origin[1];
 hordir[2] = 0;
 dist = VectorNormalize(hordir);

 hordir2[0] = reach->end[0] - reach->start[0];
 hordir2[1] = reach->end[1] - reach->start[1];
 hordir2[2] = 0;
 VectorNormalize(hordir2);

 if (DotProduct(hordir, hordir2) < -0.5 && dist < 24) return result;

 speed = 800;

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
