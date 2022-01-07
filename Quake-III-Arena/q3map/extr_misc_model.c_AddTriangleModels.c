
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int tree_t ;
typedef int entity_t ;


 float FloatForKey (int *,char*) ;
 int GetVectorForKey (int *,char*,scalar_t__*) ;
 int InsertASEModel (char const*,scalar_t__*,float,int *) ;
 int InsertMD3Model (char const*,scalar_t__*,float,int *) ;
 int Q_stricmp (char*,char*) ;
 char* ValueForKey (int *,char*) ;
 int _printf (char*,...) ;
 int c_triangleIndexes ;
 int c_triangleModels ;
 int c_triangleSurfaces ;
 int c_triangleVertexes ;
 int * entities ;
 int num_entities ;
 int qprintf (char*,...) ;
 scalar_t__ strstr (char const*,char*) ;

void AddTriangleModels( tree_t *tree ) {
 int entity_num;
 entity_t *entity;

 qprintf("----- AddTriangleModels -----\n");

 for ( entity_num=1 ; entity_num< num_entities ; entity_num++ ) {
  entity = &entities[entity_num];


  if ( !Q_stricmp( "misc_model", ValueForKey( entity, "classname" ) ) ) {
   const char *model;
   vec3_t origin;
   float angle;


   angle = FloatForKey( entity, "angle" );

   GetVectorForKey( entity, "origin", origin );

   model = ValueForKey( entity, "model" );
   if ( !model[0] ) {
    _printf("WARNING: misc_model at %i %i %i without a model key\n", (int)origin[0],
     (int)origin[1], (int)origin[2] );
    continue;
   }
   if ( strstr( model, ".md3" ) || strstr( model, ".MD3" ) ) {
    InsertMD3Model( model, origin, angle, tree );
    continue;
   }
   if ( strstr( model, ".ase" ) || strstr( model, ".ASE" ) ) {
    InsertASEModel( model, origin, angle, tree );
    continue;
   }
   _printf( "Unknown misc_model type: %s\n", model );
   continue;
  }
 }

 qprintf( "%5i triangle models\n", c_triangleModels );
 qprintf( "%5i triangle surfaces\n", c_triangleSurfaces );
 qprintf( "%5i triangle vertexes\n", c_triangleVertexes );
 qprintf( "%5i triangle indexes\n", c_triangleIndexes );
}
