
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char PATH_SEP ;

__attribute__((used)) static void FS_ReplaceSeparators( char *path ) {
 char *s;

 for ( s = path ; *s ; s++ ) {
  if ( *s == '/' || *s == '\\' ) {
   *s = PATH_SEP;
  }
 }
}
