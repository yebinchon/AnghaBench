
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ surfaceType; int lodFixed; } ;
typedef TYPE_2__ srfGridMesh_t ;
struct TYPE_7__ {int numsurfaces; TYPE_1__* surfaces; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int R_FixSharedVertexLodError_r (int,TYPE_2__*) ;
 scalar_t__ SF_GRID ;
 TYPE_3__ s_worldData ;

void R_FixSharedVertexLodError( void ) {
 int i;
 srfGridMesh_t *grid1;

 for ( i = 0; i < s_worldData.numsurfaces; i++ ) {

  grid1 = (srfGridMesh_t *) s_worldData.surfaces[i].data;

  if ( grid1->surfaceType != SF_GRID )
   continue;

  if ( grid1->lodFixed )
   continue;

  grid1->lodFixed = 2;

  R_FixSharedVertexLodError_r( i + 1, grid1);
 }
}
