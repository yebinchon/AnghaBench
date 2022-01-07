
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_9__ {scalar_t__ timestamp; int spawnflags; int damage; int noise_index; int takedamage; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_10__ {scalar_t__ time; } ;


 int CHAN_AUTO ;
 int DAMAGE_NO_PROTECTION ;
 scalar_t__ FRAMETIME ;
 int G_Damage (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *,int *,int ,int,int ) ;
 int G_Sound (TYPE_1__*,int ,int ) ;
 int MOD_TRIGGER_HURT ;
 TYPE_2__ level ;

void hurt_touch( gentity_t *self, gentity_t *other, trace_t *trace ) {
 int dflags;

 if ( !other->takedamage ) {
  return;
 }

 if ( self->timestamp > level.time ) {
  return;
 }

 if ( self->spawnflags & 16 ) {
  self->timestamp = level.time + 1000;
 } else {
  self->timestamp = level.time + FRAMETIME;
 }


 if ( !(self->spawnflags & 4) ) {
  G_Sound( other, CHAN_AUTO, self->noise_index );
 }

 if (self->spawnflags & 8)
  dflags = DAMAGE_NO_PROTECTION;
 else
  dflags = 0;
 G_Damage (other, self, self, ((void*)0), ((void*)0), self->damage, dflags, MOD_TRIGGER_HURT);
}
