
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_8__ {int angles; int origin; } ;
struct TYPE_9__ {int spawnflags; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int FOFS (int ) ;
 TYPE_2__* G_Find (TYPE_2__*,int ,char*) ;
 TYPE_2__* SelectSpawnPoint (int ,int*,int*) ;
 scalar_t__ SpotWouldTelefrag (TYPE_2__*) ;
 int VectorCopy (int ,int*) ;
 int classname ;
 int vec3_origin ;

gentity_t *SelectInitialSpawnPoint( vec3_t origin, vec3_t angles ) {
 gentity_t *spot;

 spot = ((void*)0);
 while ((spot = G_Find (spot, FOFS(classname), "info_player_deathmatch")) != ((void*)0)) {
  if ( spot->spawnflags & 1 ) {
   break;
  }
 }

 if ( !spot || SpotWouldTelefrag( spot ) ) {
  return SelectSpawnPoint( vec3_origin, origin, angles );
 }

 VectorCopy (spot->s.origin, origin);
 origin[2] += 9;
 VectorCopy (spot->s.angles, angles);

 return spot;
}
