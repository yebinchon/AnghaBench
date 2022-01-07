
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void FS_ConvertPath( char *s ) {
 while (*s) {
  if ( *s == '\\' || *s == ':' ) {
   *s = '/';
  }
  s++;
 }
}
