
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_8__ {int client; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int movedir; int flags; int ideal_viewangles; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_10__ {int end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotClearMoveResult (TYPE_2__*) ;
 int EA_Move (int ,int*,int ) ;
 int EA_MoveForward (int ) ;
 int MOVERESULT_MOVEMENTVIEW ;
 int Vector2Angles (int*,int ) ;
 int VectorCopy (int*,int ) ;
 int VectorNormalize (int*) ;
 int VectorSubtract (int ,int ,int*) ;

bot_moveresult_t BotTravel_Ladder(bot_movestate_t *ms, aas_reachability_t *reach)
{

 vec3_t dir, viewdir;
 vec3_t origin = {0, 0, 0};

 bot_moveresult_t result;

 BotClearMoveResult(&result);




 {

  VectorSubtract(reach->end, ms->origin, dir);
  VectorNormalize(dir);

  viewdir[0] = dir[0];
  viewdir[1] = dir[1];
  viewdir[2] = 3 * dir[2];
  Vector2Angles(viewdir, result.ideal_viewangles);

  EA_Move(ms->client, origin, 0);
  EA_MoveForward(ms->client);

  result.flags |= MOVERESULT_MOVEMENTVIEW;
 }
 VectorCopy(dir, result.movedir);

 return result;
}
