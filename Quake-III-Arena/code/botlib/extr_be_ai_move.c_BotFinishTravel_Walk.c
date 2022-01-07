
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_8__ {int client; scalar_t__* origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_10__ {scalar_t__* end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotClearMoveResult (TYPE_2__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorNormalize (scalar_t__*) ;

bot_moveresult_t BotFinishTravel_Walk(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir;
 float dist, speed;
 bot_moveresult_t result;

 BotClearMoveResult(&result);
 hordir[0] = reach->end[0] - ms->origin[0];
 hordir[1] = reach->end[1] - ms->origin[1];
 hordir[2] = 0;
 dist = VectorNormalize(hordir);

 if (dist > 100) dist = 100;
 speed = 400 - (400 - 3 * dist);

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
