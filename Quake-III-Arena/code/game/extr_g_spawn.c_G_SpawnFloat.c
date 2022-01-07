
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int G_SpawnString (char const*,char const*,char**) ;
 float atof (char*) ;

qboolean G_SpawnFloat( const char *key, const char *defaultString, float *out ) {
 char *s;
 qboolean present;

 present = G_SpawnString( key, defaultString, &s );
 *out = atof( s );
 return present;
}
