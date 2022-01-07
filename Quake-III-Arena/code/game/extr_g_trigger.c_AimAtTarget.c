
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_9__ {float* origin; float* origin2; } ;
struct TYPE_8__ {int absmax; int absmin; } ;
struct TYPE_10__ {TYPE_2__ s; int target; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_11__ {float value; } ;


 int G_FreeEntity (TYPE_3__*) ;
 TYPE_3__* G_PickTarget (int ) ;
 int VectorAdd (int ,int ,float*) ;
 float VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 TYPE_4__ g_gravity ;
 float sqrt (float) ;

void AimAtTarget( gentity_t *self ) {
 gentity_t *ent;
 vec3_t origin;
 float height, gravity, time, forward;
 float dist;

 VectorAdd( self->r.absmin, self->r.absmax, origin );
 VectorScale ( origin, 0.5, origin );

 ent = G_PickTarget( self->target );
 if ( !ent ) {
  G_FreeEntity( self );
  return;
 }

 height = ent->s.origin[2] - origin[2];
 gravity = g_gravity.value;
 time = sqrt( height / ( .5 * gravity ) );
 if ( !time ) {
  G_FreeEntity( self );
  return;
 }


 VectorSubtract ( ent->s.origin, origin, self->s.origin2 );
 self->s.origin2[2] = 0;
 dist = VectorNormalize( self->s.origin2);

 forward = dist / time;
 VectorScale( self->s.origin2, forward, self->s.origin2 );

 self->s.origin2[2] = time * gravity;
}
