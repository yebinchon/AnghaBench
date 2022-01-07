
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int terrainVert_t ;
typedef int terrainMesh_t ;


 int * Terrain_GetVert (int *,int,int) ;

void Terrain_GetTriangles( terrainMesh_t *pm, int x, int y, terrainVert_t **verts ) {
 if ( ( x + y ) & 1 ) {

  verts[ 0 ] = Terrain_GetVert( pm, x, y );
  verts[ 1 ] = Terrain_GetVert( pm, x, y + 1 );
  verts[ 2 ] = Terrain_GetVert( pm, x + 1, y + 1 );


  verts[ 3 ] = verts[ 2 ];
  verts[ 4 ] = Terrain_GetVert( pm, x + 1, y );
  verts[ 5 ] = verts[ 0 ];
 } else {

  verts[ 0 ] = Terrain_GetVert( pm, x, y );
  verts[ 1 ] = Terrain_GetVert( pm, x, y + 1 );
  verts[ 2 ] = Terrain_GetVert( pm, x + 1, y );


  verts[ 3 ] = verts[ 2 ];
  verts[ 4 ] = verts[ 1 ];
  verts[ 5 ] = Terrain_GetVert( pm, x + 1, y + 1 );
 }
}
