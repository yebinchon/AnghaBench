
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; scalar_t__ defaultShader; } ;
typedef TYPE_1__ shader_t ;
typedef int qhandle_t ;


 int Com_Printf (char*) ;
 scalar_t__ MAX_QPATH ;
 TYPE_1__* R_FindShader (char const*,int,int ) ;
 int qtrue ;
 scalar_t__ strlen (char const*) ;

qhandle_t RE_RegisterShaderLightMap( const char *name, int lightmapIndex ) {
 shader_t *sh;

 if ( strlen( name ) >= MAX_QPATH ) {
  Com_Printf( "Shader name exceeds MAX_QPATH\n" );
  return 0;
 }

 sh = R_FindShader( name, lightmapIndex, qtrue );






 if ( sh->defaultShader ) {
  return 0;
 }

 return sh->index;
}
