
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int contents; int surfaceFlags; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_5__ {int contentFlags; int surfaceFlags; int shader; } ;


 int Error (char*) ;
 int MAX_MAP_SHADERS ;
 int Q_stricmp (char const*,int ) ;
 TYPE_1__* ShaderInfoForShader (char const*) ;
 TYPE_2__* dshaders ;
 int numShaders ;
 int strcpy (int ,char const*) ;

int EmitShader( const char *shader ) {
 int i;
 shaderInfo_t *si;

 if ( !shader ) {
  shader = "noshader";
 }

 for ( i = 0 ; i < numShaders ; i++ ) {
  if ( !Q_stricmp( shader, dshaders[i].shader ) ) {
   return i;
  }
 }

 if ( i == MAX_MAP_SHADERS ) {
  Error( "MAX_MAP_SHADERS" );
 }
 numShaders++;
 strcpy( dshaders[i].shader, shader );

 si = ShaderInfoForShader( shader );
 dshaders[i].surfaceFlags = si->surfaceFlags;
 dshaders[i].contentFlags = si->contents;

 return i;
}
