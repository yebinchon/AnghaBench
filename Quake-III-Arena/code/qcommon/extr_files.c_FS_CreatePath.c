
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Com_Printf (char*,char*) ;
 char PATH_SEP ;
 int Sys_Mkdir (char*) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static qboolean FS_CreatePath (char *OSPath) {
 char *ofs;



 if ( strstr( OSPath, ".." ) || strstr( OSPath, "::" ) ) {
  Com_Printf( "WARNING: refusing to create relative path \"%s\"\n", OSPath );
  return qtrue;
 }

 for (ofs = OSPath+1 ; *ofs ; ofs++) {
  if (*ofs == PATH_SEP) {

   *ofs = 0;
   Sys_Mkdir (OSPath);
   *ofs = PATH_SEP;
  }
 }
 return qfalse;
}
