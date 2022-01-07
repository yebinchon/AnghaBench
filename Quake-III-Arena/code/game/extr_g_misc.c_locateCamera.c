
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int frame; int powerups; int eventParm; int angles; int origin; int origin2; int clientNum; int number; } ;
struct TYPE_7__ {int ownerNum; } ;
struct TYPE_9__ {int spawnflags; TYPE_2__ s; int target; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int DirToByte (int ) ;
 int G_FreeEntity (TYPE_3__*) ;
 TYPE_3__* G_PickTarget (int ) ;
 int G_Printf (char*) ;
 int G_SetMovedir (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;

void locateCamera( gentity_t *ent ) {
 vec3_t dir;
 gentity_t *target;
 gentity_t *owner;

 owner = G_PickTarget( ent->target );
 if ( !owner ) {
  G_Printf( "Couldn't find target for misc_partal_surface\n" );
  G_FreeEntity( ent );
  return;
 }
 ent->r.ownerNum = owner->s.number;


 if ( owner->spawnflags & 1 ) {
  ent->s.frame = 25;
 } else if ( owner->spawnflags & 2 ) {
  ent->s.frame = 75;
 }


 if ( owner->spawnflags & 4 ) {

  ent->s.powerups = 0;
 }
 else {
  ent->s.powerups = 1;
 }


 ent->s.clientNum = owner->s.clientNum;

 VectorCopy( owner->s.origin, ent->s.origin2 );


 target = G_PickTarget( owner->target );
 if ( target ) {
  VectorSubtract( target->s.origin, owner->s.origin, dir );
  VectorNormalize( dir );
 } else {
  G_SetMovedir( owner->s.angles, dir );
 }

 ent->s.eventParm = DirToByte( dir );
}
