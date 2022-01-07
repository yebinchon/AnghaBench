
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {int angles; int origin; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int FOFS (int ) ;
 int G_Error (char*) ;
 TYPE_2__* G_Find (TYPE_2__*,int ,char*) ;
 scalar_t__ SpotWouldTelefrag (TYPE_2__*) ;
 int VectorCopy (int ,int*) ;
 float VectorLength (int*) ;
 int VectorSubtract (int ,int*,int*) ;
 int classname ;
 int random () ;

gentity_t *SelectRandomFurthestSpawnPoint ( vec3_t avoidPoint, vec3_t origin, vec3_t angles ) {
 gentity_t *spot;
 vec3_t delta;
 float dist;
 float list_dist[64];
 gentity_t *list_spot[64];
 int numSpots, rnd, i, j;

 numSpots = 0;
 spot = ((void*)0);

 while ((spot = G_Find (spot, FOFS(classname), "info_player_deathmatch")) != ((void*)0)) {
  if ( SpotWouldTelefrag( spot ) ) {
   continue;
  }
  VectorSubtract( spot->s.origin, avoidPoint, delta );
  dist = VectorLength( delta );
  for (i = 0; i < numSpots; i++) {
   if ( dist > list_dist[i] ) {
    if ( numSpots >= 64 )
     numSpots = 64-1;
    for (j = numSpots; j > i; j--) {
     list_dist[j] = list_dist[j-1];
     list_spot[j] = list_spot[j-1];
    }
    list_dist[i] = dist;
    list_spot[i] = spot;
    numSpots++;
    if (numSpots > 64)
     numSpots = 64;
    break;
   }
  }
  if (i >= numSpots && numSpots < 64) {
   list_dist[numSpots] = dist;
   list_spot[numSpots] = spot;
   numSpots++;
  }
 }
 if (!numSpots) {
  spot = G_Find( ((void*)0), FOFS(classname), "info_player_deathmatch");
  if (!spot)
   G_Error( "Couldn't find a spawn point" );
  VectorCopy (spot->s.origin, origin);
  origin[2] += 9;
  VectorCopy (spot->s.angles, angles);
  return spot;
 }


 rnd = random() * (numSpots / 2);

 VectorCopy (list_spot[rnd]->s.origin, origin);
 origin[2] += 9;
 VectorCopy (list_spot[rnd]->s.angles, angles);

 return list_spot[rnd];
}
