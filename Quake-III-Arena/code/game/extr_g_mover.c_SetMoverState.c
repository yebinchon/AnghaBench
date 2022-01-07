
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef int moverState_t ;
struct TYPE_9__ {int currentOrigin; } ;
struct TYPE_12__ {int trTime; double trDuration; void* trType; int trDelta; int trBase; } ;
struct TYPE_8__ {TYPE_7__ pos; } ;
struct TYPE_10__ {int moverState; TYPE_2__ r; TYPE_1__ s; int pos2; int pos1; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_11__ {int time; } ;


 int BG_EvaluateTrajectory (TYPE_7__*,int ,int ) ;




 void* TR_LINEAR_STOP ;
 void* TR_STATIONARY ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_5__ level ;
 int trap_LinkEntity (TYPE_3__*) ;

void SetMoverState( gentity_t *ent, moverState_t moverState, int time ) {
 vec3_t delta;
 float f;

 ent->moverState = moverState;

 ent->s.pos.trTime = time;
 switch( moverState ) {
 case 129:
  VectorCopy( ent->pos1, ent->s.pos.trBase );
  ent->s.pos.trType = TR_STATIONARY;
  break;
 case 128:
  VectorCopy( ent->pos2, ent->s.pos.trBase );
  ent->s.pos.trType = TR_STATIONARY;
  break;
 case 131:
  VectorCopy( ent->pos1, ent->s.pos.trBase );
  VectorSubtract( ent->pos2, ent->pos1, delta );
  f = 1000.0 / ent->s.pos.trDuration;
  VectorScale( delta, f, ent->s.pos.trDelta );
  ent->s.pos.trType = TR_LINEAR_STOP;
  break;
 case 130:
  VectorCopy( ent->pos2, ent->s.pos.trBase );
  VectorSubtract( ent->pos1, ent->pos2, delta );
  f = 1000.0 / ent->s.pos.trDuration;
  VectorScale( delta, f, ent->s.pos.trDelta );
  ent->s.pos.trType = TR_LINEAR_STOP;
  break;
 }
 BG_EvaluateTrajectory( &ent->s.pos, level.time, ent->r.currentOrigin );
 trap_LinkEntity( ent );
}
