
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int moveflags; int client; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {int movedir; int flags; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {int start; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int BotClearMoveResult (TYPE_2__*) ;
 int EA_Move (int ,scalar_t__*,int) ;
 int MFL_SWIMMING ;
 int MFL_TELEPORTED ;
 int MOVERESULT_SWIMVIEW ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSubtract (int ,int ,scalar_t__*) ;
 int qtrue ;

bot_moveresult_t BotTravel_Teleport(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir;
 float dist;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 if (ms->moveflags & MFL_TELEPORTED) return result;


 VectorSubtract(reach->start, ms->origin, hordir);
 if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
 dist = VectorNormalize(hordir);

 BotCheckBlocked(ms, hordir, qtrue, &result);

 if (dist < 30) EA_Move(ms->client, hordir, 200);
 else EA_Move(ms->client, hordir, 400);

 if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;

 VectorCopy(hordir, result.movedir);
 return result;
}
