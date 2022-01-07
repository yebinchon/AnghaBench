
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
typedef int entity_t ;
struct TYPE_3__ {int numSurfaces; int firstSurface; } ;
typedef TYPE_1__ dmodel_t ;


 int GetVectorForKey (int *,char*,int ) ;
 char* ValueForKey (int *,char*) ;
 int VectorCopy (int ,int ) ;
 int atoi (char const*) ;
 TYPE_1__* dmodels ;
 int * entities ;
 int * entitySurface ;
 int num_entities ;
 int qtrue ;
 int * surfaceOrigin ;

void SetEntityOrigins( void ) {
 int i, j;
 entity_t *e;
 vec3_t origin;
 const char *key;
 int modelnum;
 dmodel_t *dm;

 for ( i=0 ; i < num_entities ; i++ ) {
  e = &entities[i];
  key = ValueForKey (e, "model");
  if ( key[0] != '*' ) {
   continue;
  }
  modelnum = atoi( key + 1 );
  dm = &dmodels[ modelnum ];


  for ( j = 0 ; j < dm->numSurfaces ; j++ ) {
   entitySurface[ dm->firstSurface + j ] = qtrue;
  }

  key = ValueForKey (e, "origin");
  if ( !key[0] ) {
   continue;
  }
  GetVectorForKey ( e, "origin", origin );


  for ( j = 0 ; j < dm->numSurfaces ; j++ ) {
   VectorCopy( origin, surfaceOrigin[ dm->firstSurface + j ] );
  }
 }
}
