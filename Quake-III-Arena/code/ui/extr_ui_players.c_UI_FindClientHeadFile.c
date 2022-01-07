
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Com_sprintf (char*,int,char*,char*,char const*,char const*,char const*,char const*,...) ;
 scalar_t__ UI_FileExists (char*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean UI_FindClientHeadFile( char *filename, int length, const char *teamName, const char *headModelName, const char *headSkinName, const char *base, const char *ext ) {
 char *team, *headsFolder;
 int i;

 team = "default";

 if ( headModelName[0] == '*' ) {
  headsFolder = "heads/";
  headModelName++;
 }
 else {
  headsFolder = "";
 }
 while(1) {
  for ( i = 0; i < 2; i++ ) {
   if ( i == 0 && teamName && *teamName ) {
    Com_sprintf( filename, length, "models/players/%s%s/%s/%s%s_%s.%s", headsFolder, headModelName, headSkinName, teamName, base, team, ext );
   }
   else {
    Com_sprintf( filename, length, "models/players/%s%s/%s/%s_%s.%s", headsFolder, headModelName, headSkinName, base, team, ext );
   }
   if ( UI_FileExists( filename ) ) {
    return qtrue;
   }
   if ( i == 0 && teamName && *teamName ) {
    Com_sprintf( filename, length, "models/players/%s%s/%s%s_%s.%s", headsFolder, headModelName, teamName, base, headSkinName, ext );
   }
   else {
    Com_sprintf( filename, length, "models/players/%s%s/%s_%s.%s", headsFolder, headModelName, base, headSkinName, ext );
   }
   if ( UI_FileExists( filename ) ) {
    return qtrue;
   }
   if ( !teamName || !*teamName ) {
    break;
   }
  }

  if ( headsFolder[0] ) {
   break;
  }
  headsFolder = "heads/";
 }

 return qfalse;
}
