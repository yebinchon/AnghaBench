
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int md3Header_t ;
struct TYPE_3__ {int * header; int modelName; } ;
typedef TYPE_1__ loadedModel_t ;


 int Error (char*) ;
 int MAX_LOADED_MODELS ;
 int * R_LoadMD3 (char const*) ;
 TYPE_1__* loadedModels ;
 int numLoadedModels ;
 int strcmp (char const*,int ) ;
 int strcpy (int ,char const*) ;

md3Header_t *LoadModel( const char *modelName ) {
 int i;
 loadedModel_t *lm;


 for ( i = 0, lm = loadedModels ; i < numLoadedModels ; i++, lm++ ) {
  if ( !strcmp( modelName, lm->modelName ) ) {
   return lm->header;
  }
 }


 if ( numLoadedModels == MAX_LOADED_MODELS ) {
  Error( "MAX_LOADED_MODELS" );
 }
 numLoadedModels++;

 strcpy( lm->modelName, modelName );

 lm->header = R_LoadMD3( modelName );

 return lm->header;
}
