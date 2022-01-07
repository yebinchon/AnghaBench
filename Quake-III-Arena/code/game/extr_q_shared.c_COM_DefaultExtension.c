
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oldPath ;


 int Com_sprintf (char*,int,char*,char*,char const*) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,char*,int) ;
 int strlen (char*) ;

void COM_DefaultExtension (char *path, int maxSize, const char *extension ) {
 char oldPath[MAX_QPATH];
 char *src;





 src = path + strlen(path) - 1;

 while (*src != '/' && src != path) {
  if ( *src == '.' ) {
   return;
  }
  src--;
 }

 Q_strncpyz( oldPath, path, sizeof( oldPath ) );
 Com_sprintf( path, maxSize, "%s%s", oldPath, extension );
}
