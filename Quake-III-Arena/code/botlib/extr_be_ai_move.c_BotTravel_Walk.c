
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int moveflags; int client; int entitynum; scalar_t__* origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {int areanum; scalar_t__* end; scalar_t__* start; } ;
typedef TYPE_3__ aas_reachability_t ;


 int AAS_AreaPresenceType (int ) ;
 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int BotClearMoveResult (TYPE_2__*) ;
 float BotGapDistance (scalar_t__*,scalar_t__*,int ) ;
 int EA_Crouch (int ) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int EA_Walk (int ) ;
 int MFL_WALK ;
 int PRESENCE_NORMAL ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorNormalize (scalar_t__*) ;
 int qtrue ;

bot_moveresult_t BotTravel_Walk(bot_movestate_t *ms, aas_reachability_t *reach)
{
 float dist, speed;
 vec3_t hordir;
 bot_moveresult_t result;

 BotClearMoveResult(&result);

 hordir[0] = reach->start[0] - ms->origin[0];
 hordir[1] = reach->start[1] - ms->origin[1];
 hordir[2] = 0;
 dist = VectorNormalize(hordir);

 BotCheckBlocked(ms, hordir, qtrue, &result);

 if (dist < 10)
 {

  hordir[0] = reach->end[0] - ms->origin[0];
  hordir[1] = reach->end[1] - ms->origin[1];
  hordir[2] = 0;
  dist = VectorNormalize(hordir);
 }

 if (!(AAS_AreaPresenceType(reach->areanum) & PRESENCE_NORMAL))
 {

  if (dist < 20) EA_Crouch(ms->client);
 }

 dist = BotGapDistance(ms->origin, hordir, ms->entitynum);

 if (ms->moveflags & MFL_WALK)
 {
  if (dist > 0) speed = 200 - (180 - 1 * dist);
  else speed = 200;
  EA_Walk(ms->client);
 }
 else
 {
  if (dist > 0) speed = 400 - (360 - 2 * dist);
  else speed = 400;
 }

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
