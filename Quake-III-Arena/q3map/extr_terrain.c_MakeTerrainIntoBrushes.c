
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xyz; } ;
typedef TYPE_1__ terrainVert_t ;
struct TYPE_5__ {int height; int width; TYPE_1__* map; } ;
typedef TYPE_2__ terrainMesh_t ;
typedef int shaderInfo_t ;


 int MakeBrushFromTriangle (int ,int ,int ,int *) ;
 int * ShaderInfoForShader (char*) ;

void MakeTerrainIntoBrushes( terrainMesh_t *tm ) {
 int index[ 6 ];
 int y;
 int x;
 terrainVert_t *verts;
 shaderInfo_t *terrainShader;

 terrainShader = ShaderInfoForShader( "textures/common/terrain" );

 verts = tm->map;
 for( y = 0; y < tm->height - 1; y++ ) {
  for( x = 0; x < tm->width - 1; x++ ) {
   if ( ( x + y ) & 1 ) {

    index[ 0 ] = x + y * tm->width;
    index[ 1 ] = x + ( y + 1 ) * tm->width;
    index[ 2 ] = ( x + 1 ) + ( y + 1 ) * tm->width;
    index[ 3 ] = ( x + 1 ) + ( y + 1 ) * tm->width;
    index[ 4 ] = ( x + 1 ) + y * tm->width;
    index[ 5 ] = x + y * tm->width;
   } else {

    index[ 0 ] = x + y * tm->width;
    index[ 1 ] = x + ( y + 1 ) * tm->width;
    index[ 2 ] = ( x + 1 ) + y * tm->width;
    index[ 3 ] = ( x + 1 ) + y * tm->width;
    index[ 4 ] = x + ( y + 1 ) * tm->width;
    index[ 5 ] = ( x + 1 ) + ( y + 1 ) * tm->width;
   }

   MakeBrushFromTriangle( verts[ index[ 0 ] ].xyz, verts[ index[ 1 ] ].xyz, verts[ index[ 2 ] ].xyz, terrainShader );
   MakeBrushFromTriangle( verts[ index[ 3 ] ].xyz, verts[ index[ 4 ] ].xyz, verts[ index[ 5 ] ].xyz, terrainShader );
  }
 }
}
