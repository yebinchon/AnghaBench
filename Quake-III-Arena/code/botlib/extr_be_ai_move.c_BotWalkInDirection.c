
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_6__ {double* origin; int moveflags; double* velocity; float thinktime; int client; int entitynum; int presencetype; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_7__ {int frames; int stopevent; double* endpos; int velocity; } ;
typedef TYPE_2__ aas_clientmove_t ;


 scalar_t__ AAS_OnGround (double*,int ,int ) ;
 int AAS_PredictClientMovement (TYPE_2__*,int ,double*,int,int,double*,double*,int,int,float,int,int ,int) ;
 scalar_t__ BotCheckBarrierJump (TYPE_1__*,double*,float) ;
 float BotGapDistance (double*,double*,int ) ;
 int EA_Crouch (int ) ;
 int EA_Jump (int ) ;
 int EA_Move (int ,double*,float) ;
 int MFL_BARRIERJUMP ;
 int MFL_ONGROUND ;
 int MOVE_CROUCH ;
 int MOVE_JUMP ;
 double PREDICTIONTIME_JUMP ;
 int PRESENCE_CROUCH ;
 int PRESENCE_NORMAL ;
 int SE_ENTERLAVA ;
 int SE_ENTERSLIME ;
 int SE_ENTERWATER ;
 int SE_HITGROUND ;
 int SE_HITGROUNDDAMAGE ;
 int VectorCopy (double*,double*) ;
 float VectorLength (double*) ;
 int VectorNormalize (double*) ;
 int VectorNormalize2 (int ,double*) ;
 int VectorScale (double*,float,double*) ;
 int qfalse ;
 int qtrue ;

int BotWalkInDirection(bot_movestate_t *ms, vec3_t dir, float speed, int type)
{
 vec3_t hordir, cmdmove, velocity, tmpdir, origin;
 int presencetype, maxframes, cmdframes, stopevent;
 aas_clientmove_t move;
 float dist;

 if (AAS_OnGround(ms->origin, ms->presencetype, ms->entitynum)) ms->moveflags |= MFL_ONGROUND;

 if (ms->moveflags & MFL_ONGROUND)
 {

  if (BotCheckBarrierJump(ms, dir, speed)) return qtrue;

  ms->moveflags &= ~MFL_BARRIERJUMP;

  if ((type & MOVE_CROUCH) && !(type & MOVE_JUMP)) presencetype = PRESENCE_CROUCH;
  else presencetype = PRESENCE_NORMAL;

  hordir[0] = dir[0];
  hordir[1] = dir[1];
  hordir[2] = 0;
  VectorNormalize(hordir);

  if (!(type & MOVE_JUMP))
  {

   if (BotGapDistance(ms->origin, hordir, ms->entitynum) > 0) type |= MOVE_JUMP;
  }

  VectorScale(hordir, speed, cmdmove);
  VectorCopy(ms->velocity, velocity);

  if (type & MOVE_JUMP)
  {

   cmdmove[2] = 400;
   maxframes = PREDICTIONTIME_JUMP / 0.1;
   cmdframes = 1;
   stopevent = SE_HITGROUND|SE_HITGROUNDDAMAGE|
      SE_ENTERWATER|SE_ENTERSLIME|SE_ENTERLAVA;
  }
  else
  {
   maxframes = 2;
   cmdframes = 2;
   stopevent = SE_HITGROUNDDAMAGE|
      SE_ENTERWATER|SE_ENTERSLIME|SE_ENTERLAVA;
  }


  VectorCopy(ms->origin, origin);
  origin[2] += 0.5;
  AAS_PredictClientMovement(&move, ms->entitynum, origin, presencetype, qtrue,
         velocity, cmdmove, cmdframes, maxframes, 0.1f,
         stopevent, 0, qfalse);

  if (move.frames >= maxframes && (type & MOVE_JUMP))
  {

   return qfalse;
  }

  if (move.stopevent & (SE_ENTERSLIME|SE_ENTERLAVA|SE_HITGROUNDDAMAGE))
  {




   return qfalse;
  }

  if (move.stopevent & SE_HITGROUND)
  {

   VectorNormalize2(move.velocity, tmpdir);
   dist = BotGapDistance(move.endpos, tmpdir, ms->entitynum);
   if (dist > 0) return qfalse;

   dist = BotGapDistance(move.endpos, hordir, ms->entitynum);
   if (dist > 0) return qfalse;
  }

  tmpdir[0] = move.endpos[0] - ms->origin[0];
  tmpdir[1] = move.endpos[1] - ms->origin[1];
  tmpdir[2] = 0;



  if (VectorLength(tmpdir) < speed * ms->thinktime * 0.5) return qfalse;

  if (type & MOVE_JUMP) EA_Jump(ms->client);
  if (type & MOVE_CROUCH) EA_Crouch(ms->client);
  EA_Move(ms->client, hordir, speed);

  return qtrue;
 }
 else
 {
  if (ms->moveflags & MFL_BARRIERJUMP)
  {

   if (ms->velocity[2] < 50)
   {
    EA_Move(ms->client, dir, speed);
   }
  }

  return qtrue;
 }
}
