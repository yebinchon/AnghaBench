
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
typedef int newTeamName ;
typedef int filename ;
struct TYPE_6__ {scalar_t__ team; void* modelIcon; void* headModel; void* torsoModel; void* legsModel; } ;
typedef TYPE_1__ clientInfo_t ;


 scalar_t__ CG_FindClientHeadFile (char*,int,TYPE_1__*,char const*,char const*,char const*,char*,char*) ;
 int CG_ParseAnimationFile (char*,TYPE_1__*) ;
 int CG_RegisterClientSkin (TYPE_1__*,char const*,char const*,char const*,char const*,char const*) ;
 int Com_Printf (char*,char const*,...) ;
 int Com_sprintf (char*,int,char*,char const*,...) ;
 char const* DEFAULT_BLUETEAM_NAME ;
 char const* DEFAULT_REDTEAM_NAME ;
 int MAX_QPATH ;
 scalar_t__ TEAM_BLUE ;
 int qfalse ;
 int qtrue ;
 void* trap_R_RegisterModel (char*) ;
 void* trap_R_RegisterShaderNoMip (char*) ;

__attribute__((used)) static qboolean CG_RegisterClientModelname( clientInfo_t *ci, const char *modelName, const char *skinName, const char *headModelName, const char *headSkinName, const char *teamName ) {
 char filename[MAX_QPATH*2];
 const char *headName;
 char newTeamName[MAX_QPATH*2];

 if ( headModelName[0] == '\0' ) {
  headName = modelName;
 }
 else {
  headName = headModelName;
 }
 Com_sprintf( filename, sizeof( filename ), "models/players/%s/lower.md3", modelName );
 ci->legsModel = trap_R_RegisterModel( filename );
 if ( !ci->legsModel ) {
  Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/lower.md3", modelName );
  ci->legsModel = trap_R_RegisterModel( filename );
  if ( !ci->legsModel ) {
   Com_Printf( "Failed to load model file %s\n", filename );
   return qfalse;
  }
 }

 Com_sprintf( filename, sizeof( filename ), "models/players/%s/upper.md3", modelName );
 ci->torsoModel = trap_R_RegisterModel( filename );
 if ( !ci->torsoModel ) {
  Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/upper.md3", modelName );
  ci->torsoModel = trap_R_RegisterModel( filename );
  if ( !ci->torsoModel ) {
   Com_Printf( "Failed to load model file %s\n", filename );
   return qfalse;
  }
 }

 if( headName[0] == '*' ) {
  Com_sprintf( filename, sizeof( filename ), "models/players/heads/%s/%s.md3", &headModelName[1], &headModelName[1] );
 }
 else {
  Com_sprintf( filename, sizeof( filename ), "models/players/%s/head.md3", headName );
 }
 ci->headModel = trap_R_RegisterModel( filename );

 if ( !ci->headModel && headName[0] != '*' ) {
  Com_sprintf( filename, sizeof( filename ), "models/players/heads/%s/%s.md3", headModelName, headModelName );
  ci->headModel = trap_R_RegisterModel( filename );
 }
 if ( !ci->headModel ) {
  Com_Printf( "Failed to load model file %s\n", filename );
  return qfalse;
 }


 if ( !CG_RegisterClientSkin( ci, teamName, modelName, skinName, headName, headSkinName ) ) {
  if ( teamName && *teamName) {
   Com_Printf( "Failed to load skin file: %s : %s : %s, %s : %s\n", teamName, modelName, skinName, headName, headSkinName );
   if( ci->team == TEAM_BLUE ) {
    Com_sprintf(newTeamName, sizeof(newTeamName), "%s/", DEFAULT_BLUETEAM_NAME);
   }
   else {
    Com_sprintf(newTeamName, sizeof(newTeamName), "%s/", DEFAULT_REDTEAM_NAME);
   }
   if ( !CG_RegisterClientSkin( ci, newTeamName, modelName, skinName, headName, headSkinName ) ) {
    Com_Printf( "Failed to load skin file: %s : %s : %s, %s : %s\n", newTeamName, modelName, skinName, headName, headSkinName );
    return qfalse;
   }
  } else {
   Com_Printf( "Failed to load skin file: %s : %s, %s : %s\n", modelName, skinName, headName, headSkinName );
   return qfalse;
  }
 }


 Com_sprintf( filename, sizeof( filename ), "models/players/%s/animation.cfg", modelName );
 if ( !CG_ParseAnimationFile( filename, ci ) ) {
  Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/animation.cfg", modelName );
  if ( !CG_ParseAnimationFile( filename, ci ) ) {
   Com_Printf( "Failed to load animation file %s\n", filename );
   return qfalse;
  }
 }

 if ( CG_FindClientHeadFile( filename, sizeof(filename), ci, teamName, headName, headSkinName, "icon", "skin" ) ) {
  ci->modelIcon = trap_R_RegisterShaderNoMip( filename );
 }
 else if ( CG_FindClientHeadFile( filename, sizeof(filename), ci, teamName, headName, headSkinName, "icon", "tga" ) ) {
  ci->modelIcon = trap_R_RegisterShaderNoMip( filename );
 }

 if ( !ci->modelIcon ) {
  return qfalse;
 }

 return qtrue;
}
