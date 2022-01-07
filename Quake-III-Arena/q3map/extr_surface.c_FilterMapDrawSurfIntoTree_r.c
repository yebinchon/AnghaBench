
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_8__ {size_t planenum; TYPE_3__* drawSurfReferences; scalar_t__ opaque; struct TYPE_8__** children; } ;
typedef TYPE_2__ node_t ;
typedef int mapDrawSurface_t ;
struct TYPE_9__ {scalar_t__ outputNumber; struct TYPE_9__* nextRef; } ;
typedef TYPE_3__ drawSurfRef_t ;


 int ClipWindingEpsilon (int *,int ,int ,int ,int **,int **) ;
 int FreeWinding (int *) ;
 int ON_EPSILON ;
 size_t PLANENUM_LEAF ;
 TYPE_3__* malloc (int) ;
 TYPE_1__* mapplanes ;
 scalar_t__ numDrawSurfaces ;

int FilterMapDrawSurfIntoTree_r( winding_t *w, mapDrawSurface_t *ds, node_t *node ) {
 drawSurfRef_t *dsr;
 plane_t *plane;
 int total;
 winding_t *front, *back;

 if ( node->planenum != PLANENUM_LEAF ) {
  plane = &mapplanes[ node->planenum ];
  ClipWindingEpsilon ( w, plane->normal, plane->dist,
    ON_EPSILON, &front, &back );

  total = 0;
  if ( front ) {
   total += FilterMapDrawSurfIntoTree_r( front, ds, node->children[0] );
  }
  if ( back ) {
   total += FilterMapDrawSurfIntoTree_r( back, ds, node->children[1] );
  }

  FreeWinding( w );
  return total;
 }


 if ( node->opaque ) {
  return 0;
 }


 for ( dsr = node->drawSurfReferences ; dsr ; dsr = dsr->nextRef ) {
  if ( dsr->outputNumber == numDrawSurfaces ) {
   return 0;
  }
 }

 dsr = malloc( sizeof( *dsr ) );
 dsr->outputNumber = numDrawSurfaces;
 dsr->nextRef = node->drawSurfReferences;
 node->drawSurfReferences = dsr;
 return 1;
}
