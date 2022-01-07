
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int qfalse ;
 int qtrue ;
 scalar_t__ strchr (char const*,char) ;

qboolean Info_Validate( const char *s ) {
 if ( strchr( s, '\"' ) ) {
  return qfalse;
 }
 if ( strchr( s, ';' ) ) {
  return qfalse;
 }
 return qtrue;
}
