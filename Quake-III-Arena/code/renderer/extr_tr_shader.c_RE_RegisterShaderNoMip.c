
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; scalar_t__ defaultShader; } ;
typedef TYPE_1__ shader_t ;
typedef int qhandle_t ;


 int Com_Printf (char*) ;
 int LIGHTMAP_2D ;
 scalar_t__ MAX_QPATH ;
 TYPE_1__* R_FindShader (char const*,int ,int ) ;
 int qfalse ;
 scalar_t__ strlen (char const*) ;

qhandle_t RE_RegisterShaderNoMip( const char *name ) {
 shader_t *sh;

 if ( strlen( name ) >= MAX_QPATH ) {
  Com_Printf( "Shader name exceeds MAX_QPATH\n" );
  return 0;
 }

 sh = R_FindShader( name, LIGHTMAP_2D, qfalse );






 if ( sh->defaultShader ) {
  return 0;
 }

 return sh->index;
}
