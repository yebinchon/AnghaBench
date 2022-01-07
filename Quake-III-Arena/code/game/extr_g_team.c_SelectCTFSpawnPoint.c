
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int team_t ;
struct TYPE_6__ {int angles; int origin; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 TYPE_2__* SelectRandomTeamSpawnPoint (int,int ) ;
 TYPE_2__* SelectSpawnPoint (int ,int*,int*) ;
 int VectorCopy (int ,int*) ;
 int vec3_origin ;

gentity_t *SelectCTFSpawnPoint ( team_t team, int teamstate, vec3_t origin, vec3_t angles ) {
 gentity_t *spot;

 spot = SelectRandomTeamSpawnPoint ( teamstate, team );

 if (!spot) {
  return SelectSpawnPoint( vec3_origin, origin, angles );
 }

 VectorCopy (spot->s.origin, origin);
 origin[2] += 9;
 VectorCopy (spot->s.angles, angles);

 return spot;
}
