
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int vec3_t ;
struct TYPE_12__ {double* normal; } ;
struct TYPE_15__ {int fraction; TYPE_1__ plane; int endpos; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_11__ {int trTime; int trBase; int trDelta; } ;
struct TYPE_14__ {int eFlags; TYPE_10__ pos; } ;
struct TYPE_13__ {int currentOrigin; } ;
struct TYPE_16__ {TYPE_3__ s; TYPE_2__ r; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_17__ {int previousTime; int time; } ;


 int BG_EvaluateTrajectoryDelta (TYPE_10__*,int,int ) ;
 float DotProduct (int ,double*) ;
 int EF_BOUNCE_HALF ;
 int G_SetOrigin (TYPE_5__*,int ) ;
 int VectorAdd (int ,double*,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorLength (int ) ;
 int VectorMA (int ,int,double*,int ) ;
 int VectorScale (int ,double,int ) ;
 TYPE_6__ level ;

void G_BounceMissile( gentity_t *ent, trace_t *trace ) {
 vec3_t velocity;
 float dot;
 int hitTime;


 hitTime = level.previousTime + ( level.time - level.previousTime ) * trace->fraction;
 BG_EvaluateTrajectoryDelta( &ent->s.pos, hitTime, velocity );
 dot = DotProduct( velocity, trace->plane.normal );
 VectorMA( velocity, -2*dot, trace->plane.normal, ent->s.pos.trDelta );

 if ( ent->s.eFlags & EF_BOUNCE_HALF ) {
  VectorScale( ent->s.pos.trDelta, 0.65, ent->s.pos.trDelta );

  if ( trace->plane.normal[2] > 0.2 && VectorLength( ent->s.pos.trDelta ) < 40 ) {
   G_SetOrigin( ent, trace->endpos );
   return;
  }
 }

 VectorAdd( ent->r.currentOrigin, trace->plane.normal, ent->r.currentOrigin);
 VectorCopy( ent->r.currentOrigin, ent->s.pos.trBase );
 ent->s.pos.trTime = level.time;
}
