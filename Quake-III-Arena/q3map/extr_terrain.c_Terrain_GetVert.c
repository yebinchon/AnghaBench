
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int terrainVert_t ;
struct TYPE_3__ {int width; int * map; } ;
typedef TYPE_1__ terrainMesh_t ;



terrainVert_t *Terrain_GetVert( terrainMesh_t *pm, int x, int y ) {
 return &pm->map[ x + y * pm->width ];
}
