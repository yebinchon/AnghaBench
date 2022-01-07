
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_6__ {int client; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
typedef int bot_moveresult_t ;
struct TYPE_7__ {int * end; } ;
typedef TYPE_2__ aas_reachability_t ;


 int BotClearMoveResult (int *) ;
 int EA_Move (int ,int *,int) ;
 int MoverBottomCenter (TYPE_2__*,int *) ;
 int VectorNormalize (int *) ;
 int VectorSubtract (int *,int ,int *) ;
 scalar_t__ fabs (int ) ;

bot_moveresult_t BotFinishTravel_Elevator(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t bottomcenter, bottomdir, topdir;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 MoverBottomCenter(reach, bottomcenter);
 VectorSubtract(bottomcenter, ms->origin, bottomdir);

 VectorSubtract(reach->end, ms->origin, topdir);

 if (fabs(bottomdir[2]) < fabs(topdir[2]))
 {
  VectorNormalize(bottomdir);
  EA_Move(ms->client, bottomdir, 300);
 }
 else
 {
  VectorNormalize(topdir);
  EA_Move(ms->client, topdir, 300);
 }
 return result;
}
