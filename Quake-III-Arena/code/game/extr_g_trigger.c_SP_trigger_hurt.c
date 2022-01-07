
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int contents; } ;
struct TYPE_7__ {int damage; int spawnflags; int use; TYPE_1__ r; int touch; int noise_index; } ;
typedef TYPE_2__ gentity_t ;


 int CONTENTS_TRIGGER ;
 int G_SoundIndex (char*) ;
 int InitTrigger (TYPE_2__*) ;
 int hurt_touch ;
 int hurt_use ;
 int trap_LinkEntity (TYPE_2__*) ;

void SP_trigger_hurt( gentity_t *self ) {
 InitTrigger (self);

 self->noise_index = G_SoundIndex( "sound/world/electro.wav" );
 self->touch = hurt_touch;

 if ( !self->damage ) {
  self->damage = 5;
 }

 self->r.contents = CONTENTS_TRIGGER;

 if ( self->spawnflags & 2 ) {
  self->use = hurt_use;
 }


 if ( ! (self->spawnflags & 1) ) {
  trap_LinkEntity (self);
 }
}
