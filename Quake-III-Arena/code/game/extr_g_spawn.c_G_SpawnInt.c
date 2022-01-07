
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int G_SpawnString (char const*,char const*,char**) ;
 int atoi (char*) ;

qboolean G_SpawnInt( const char *key, const char *defaultString, int *out ) {
 char *s;
 qboolean present;

 present = G_SpawnString( key, defaultString, &s );
 *out = atoi( s );
 return present;
}
