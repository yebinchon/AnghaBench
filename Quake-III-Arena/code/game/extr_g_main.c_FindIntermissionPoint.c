
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int origin; int angles; } ;
struct TYPE_7__ {TYPE_1__ s; scalar_t__ target; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_8__ {int intermission_angle; int intermission_origin; } ;


 int FOFS (int ) ;
 TYPE_2__* G_Find (int *,int ,char*) ;
 TYPE_2__* G_PickTarget (scalar_t__) ;
 int SelectSpawnPoint (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int classname ;
 TYPE_3__ level ;
 int vec3_origin ;
 int vectoangles (int ,int ) ;

void FindIntermissionPoint( void ) {
 gentity_t *ent, *target;
 vec3_t dir;


 ent = G_Find (((void*)0), FOFS(classname), "info_player_intermission");
 if ( !ent ) {
  SelectSpawnPoint ( vec3_origin, level.intermission_origin, level.intermission_angle );
 } else {
  VectorCopy (ent->s.origin, level.intermission_origin);
  VectorCopy (ent->s.angles, level.intermission_angle);

  if ( ent->target ) {
   target = G_PickTarget( ent->target );
   if ( target ) {
    VectorSubtract( target->s.origin, level.intermission_origin, dir );
    vectoangles( dir, level.intermission_angle );
   }
  }
 }

}
