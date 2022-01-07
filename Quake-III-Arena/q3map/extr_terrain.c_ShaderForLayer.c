
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shaderInfo_t ;


 int MAX_QPATH ;
 int * ShaderInfoForShader (char*) ;
 int sprintf (char*,char*,char const*,int,...) ;

shaderInfo_t *ShaderForLayer( int minlayer, int maxlayer, const char *shadername ) {
 char shader[ MAX_QPATH ];

 if ( minlayer == maxlayer ) {
  sprintf( shader, "textures/%s_%d", shadername, maxlayer );
 } else {
  sprintf( shader, "textures/%s_%dto%d", shadername, minlayer, maxlayer );
 }

 return ShaderInfoForShader( shader );
}
