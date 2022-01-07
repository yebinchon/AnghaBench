
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* shader; int width; } ;
typedef TYPE_1__ shaderInfo_t ;


 TYPE_1__* AllocShaderInfo () ;
 int LoadShaderImage (TYPE_1__*) ;
 int MAX_QPATH ;
 int Q_stricmp (char*,char*) ;
 int StripExtension (char*) ;
 int numShaderInfo ;
 TYPE_1__* shaderInfo ;
 int strcpy (char*,char const*) ;

shaderInfo_t *ShaderInfoForShader( const char *shaderName ) {
 int i;
 shaderInfo_t *si;
 char shader[MAX_QPATH];


 strcpy( shader, shaderName );
 StripExtension( shader );


 for ( i = 0 ; i < numShaderInfo ; i++ ) {
  si = &shaderInfo[ i ];
  if ( !Q_stricmp( shader, si->shader ) ) {
   if ( !si->width ) {
    LoadShaderImage( si );
   }
   return si;
  }
 }

 si = AllocShaderInfo();
 strcpy( si->shader, shader );

 LoadShaderImage( si );

 return si;
}
