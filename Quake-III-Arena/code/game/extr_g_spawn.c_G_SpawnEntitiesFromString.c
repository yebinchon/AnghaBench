
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spawning; scalar_t__ numSpawnVars; } ;


 int G_Error (char*) ;
 scalar_t__ G_ParseSpawnVars () ;
 int G_SpawnGEntityFromSpawnVars () ;
 int SP_worldspawn () ;
 TYPE_1__ level ;
 int qfalse ;
 int qtrue ;

void G_SpawnEntitiesFromString( void ) {

 level.spawning = qtrue;
 level.numSpawnVars = 0;




 if ( !G_ParseSpawnVars() ) {
  G_Error( "SpawnEntities: no entities" );
 }
 SP_worldspawn();


 while( G_ParseSpawnVars() ) {
  G_SpawnGEntityFromSpawnVars();
 }

 level.spawning = qfalse;
}
