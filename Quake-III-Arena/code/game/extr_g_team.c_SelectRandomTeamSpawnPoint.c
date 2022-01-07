
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ team_t ;
typedef int gentity_t ;


 int FOFS (char*) ;
 int * G_Find (int *,int ,char*) ;
 int MAX_TEAM_SPAWN_POINTS ;
 scalar_t__ SpotWouldTelefrag (int *) ;
 int TEAM_BEGIN ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 int rand () ;

gentity_t *SelectRandomTeamSpawnPoint( int teamstate, team_t team ) {
 gentity_t *spot;
 int count;
 int selection;
 gentity_t *spots[MAX_TEAM_SPAWN_POINTS];
 char *classname;

 if (teamstate == TEAM_BEGIN) {
  if (team == TEAM_RED)
   classname = "team_CTF_redplayer";
  else if (team == TEAM_BLUE)
   classname = "team_CTF_blueplayer";
  else
   return ((void*)0);
 } else {
  if (team == TEAM_RED)
   classname = "team_CTF_redspawn";
  else if (team == TEAM_BLUE)
   classname = "team_CTF_bluespawn";
  else
   return ((void*)0);
 }
 count = 0;

 spot = ((void*)0);

 while ((spot = G_Find (spot, FOFS(classname), classname)) != ((void*)0)) {
  if ( SpotWouldTelefrag( spot ) ) {
   continue;
  }
  spots[ count ] = spot;
  if (++count == MAX_TEAM_SPAWN_POINTS)
   break;
 }

 if ( !count ) {
  return G_Find( ((void*)0), FOFS(classname), classname);
 }

 selection = rand() % count;
 return spots[ selection ];
}
