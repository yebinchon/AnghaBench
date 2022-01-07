
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int skinName ;
typedef int qboolean ;
struct TYPE_4__ {int animations; void* headModel; void* torsoModel; void* legsModel; } ;
typedef TYPE_1__ playerInfo_t ;
typedef int modelName ;
typedef int filename ;


 int Com_Printf (char*,char*,...) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,char const*,int) ;
 int UI_ParseAnimationFile (char*,int ) ;
 int UI_RegisterClientSkin (TYPE_1__*,char*,char*) ;
 int qfalse ;
 int qtrue ;
 char* strchr (char*,char) ;
 void* trap_R_RegisterModel (char*) ;

qboolean UI_RegisterClientModelname( playerInfo_t *pi, const char *modelSkinName ) {
 char modelName[MAX_QPATH];
 char skinName[MAX_QPATH];
 char filename[MAX_QPATH];
 char *slash;

 pi->torsoModel = 0;
 pi->headModel = 0;

 if ( !modelSkinName[0] ) {
  return qfalse;
 }

 Q_strncpyz( modelName, modelSkinName, sizeof( modelName ) );

 slash = strchr( modelName, '/' );
 if ( !slash ) {

  Q_strncpyz( skinName, "default", sizeof( skinName ) );
 } else {
  Q_strncpyz( skinName, slash + 1, sizeof( skinName ) );

  *slash = 0;
 }



 Com_sprintf( filename, sizeof( filename ), "models/players/%s/lower.md3", modelName );
 pi->legsModel = trap_R_RegisterModel( filename );
 if ( !pi->legsModel ) {
  Com_Printf( "Failed to load model file %s\n", filename );
  return qfalse;
 }

 Com_sprintf( filename, sizeof( filename ), "models/players/%s/upper.md3", modelName );
 pi->torsoModel = trap_R_RegisterModel( filename );
 if ( !pi->torsoModel ) {
  Com_Printf( "Failed to load model file %s\n", filename );
  return qfalse;
 }

 Com_sprintf( filename, sizeof( filename ), "models/players/%s/head.md3", modelName );
 pi->headModel = trap_R_RegisterModel( filename );
 if ( !pi->headModel ) {
  Com_Printf( "Failed to load model file %s\n", filename );
  return qfalse;
 }


 if ( !UI_RegisterClientSkin( pi, modelName, skinName ) ) {
  if ( !UI_RegisterClientSkin( pi, modelName, "default" ) ) {
   Com_Printf( "Failed to load skin file: %s : %s\n", modelName, skinName );
   return qfalse;
  }
 }


 Com_sprintf( filename, sizeof( filename ), "models/players/%s/animation.cfg", modelName );
 if ( !UI_ParseAnimationFile( filename, pi->animations ) ) {
  Com_Printf( "Failed to load animation file %s\n", filename );
  return qfalse;
 }

 return qtrue;
}
