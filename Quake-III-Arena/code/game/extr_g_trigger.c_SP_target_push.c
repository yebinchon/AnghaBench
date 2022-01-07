
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int absmax; int absmin; } ;
struct TYPE_6__ {int origin; int origin2; int angles; } ;
struct TYPE_8__ {int speed; int spawnflags; int use; scalar_t__ nextthink; int think; TYPE_2__ r; TYPE_1__ s; scalar_t__ target; void* noise_index; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_9__ {scalar_t__ time; } ;


 int AimAtTarget ;
 scalar_t__ FRAMETIME ;
 int G_SetMovedir (int ,int ) ;
 void* G_SoundIndex (char*) ;
 int Use_target_push ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,int,int ) ;
 TYPE_4__ level ;

void SP_target_push( gentity_t *self ) {
 if (!self->speed) {
  self->speed = 1000;
 }
 G_SetMovedir (self->s.angles, self->s.origin2);
 VectorScale (self->s.origin2, self->speed, self->s.origin2);

 if ( self->spawnflags & 1 ) {
  self->noise_index = G_SoundIndex("sound/world/jumppad.wav");
 } else {
  self->noise_index = G_SoundIndex("sound/misc/windfly.wav");
 }
 if ( self->target ) {
  VectorCopy( self->s.origin, self->r.absmin );
  VectorCopy( self->s.origin, self->r.absmax );
  self->think = AimAtTarget;
  self->nextthink = level.time + FRAMETIME;
 }
 self->use = Use_target_push;
}
