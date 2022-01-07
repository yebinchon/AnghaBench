
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shaderInfo_t ;


 int Error (char*) ;
 int MAX_TERRAIN_TEXTURES ;
 int numtextures ;
 int ** textures ;

void Terrain_AddTexture( shaderInfo_t *texture ) {
 int i;

 if ( !texture ) {
  return;
 }

 for( i = 0; i < numtextures; i++ ) {
  if ( textures[ i ] == texture ) {
   return;
  }
 }

 if ( numtextures >= MAX_TERRAIN_TEXTURES ) {
  Error( "Too many textures on terrain" );
  return;
 }

 textures[ numtextures++ ] = texture;
}
