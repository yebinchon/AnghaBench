
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int FOFS (int ) ;
 int * G_Find (int *,int ,char*) ;
 int MAX_SPAWN_POINTS ;
 scalar_t__ SpotWouldTelefrag (int *) ;
 int classname ;
 int rand () ;

gentity_t *SelectRandomDeathmatchSpawnPoint( void ) {
 gentity_t *spot;
 int count;
 int selection;
 gentity_t *spots[MAX_SPAWN_POINTS];

 count = 0;
 spot = ((void*)0);

 while ((spot = G_Find (spot, FOFS(classname), "info_player_deathmatch")) != ((void*)0)) {
  if ( SpotWouldTelefrag( spot ) ) {
   continue;
  }
  spots[ count ] = spot;
  count++;
 }

 if ( !count ) {
  return G_Find( ((void*)0), FOFS(classname), "info_player_deathmatch");
 }

 selection = rand() % count;
 return spots[ selection ];
}
