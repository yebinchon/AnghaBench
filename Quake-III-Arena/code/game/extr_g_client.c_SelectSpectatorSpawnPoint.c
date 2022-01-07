
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
typedef int gentity_t ;
struct TYPE_2__ {int intermission_angle; int intermission_origin; } ;


 int FindIntermissionPoint () ;
 int VectorCopy (int ,int ) ;
 TYPE_1__ level ;

gentity_t *SelectSpectatorSpawnPoint( vec3_t origin, vec3_t angles ) {
 FindIntermissionPoint();

 VectorCopy( level.intermission_origin, origin );
 VectorCopy( level.intermission_angle, angles );

 return ((void*)0);
}
