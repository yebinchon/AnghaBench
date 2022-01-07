
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ loopSound; } ;
struct TYPE_8__ {int spawnflags; scalar_t__ noise_index; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int EV_GENERAL_SOUND ;
 int EV_GLOBAL_SOUND ;
 int G_AddEvent (TYPE_2__*,int ,scalar_t__) ;

void Use_Target_Speaker (gentity_t *ent, gentity_t *other, gentity_t *activator) {
 if (ent->spawnflags & 3) {
  if (ent->s.loopSound)
   ent->s.loopSound = 0;
  else
   ent->s.loopSound = ent->noise_index;
 }else {
  if ( ent->spawnflags & 8 ) {
   G_AddEvent( activator, EV_GENERAL_SOUND, ent->noise_index );
  } else if (ent->spawnflags & 4) {
   G_AddEvent( ent, EV_GLOBAL_SOUND, ent->noise_index );
  } else {
   G_AddEvent( ent, EV_GENERAL_SOUND, ent->noise_index );
  }
 }
}
