
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_9__ {int planenum; } ;
typedef TYPE_1__ side_t ;
struct TYPE_10__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_11__ {int planenum; TYPE_4__* drawSurfReferences; scalar_t__ opaque; struct TYPE_11__** children; } ;
typedef TYPE_3__ node_t ;
typedef int mapDrawSurface_t ;
struct TYPE_12__ {struct TYPE_12__* nextRef; int outputNumber; } ;
typedef TYPE_4__ drawSurfRef_t ;


 int ClipWindingEpsilon (int *,int ,int ,int ,int **,int **) ;
 int FreeWinding (int *) ;
 int ON_EPSILON ;
 int PLANENUM_LEAF ;
 TYPE_4__* malloc (int) ;
 TYPE_2__* mapplanes ;
 int numDrawSurfaces ;

int FilterSideIntoTree_r( winding_t *w, side_t *side, mapDrawSurface_t *ds, node_t *node ) {
 drawSurfRef_t *dsr;
 plane_t *plane;
 winding_t *front, *back;
 int total;

 if ( !w ) {
  return 0;
 }

 if ( node->planenum != PLANENUM_LEAF ) {
  if ( side->planenum == node->planenum ) {
   return FilterSideIntoTree_r( w, side, ds, node->children[0] );
  }
  if ( side->planenum == ( node->planenum ^ 1) ) {
   return FilterSideIntoTree_r( w, side, ds, node->children[1] );
  }

  plane = &mapplanes[ node->planenum ];
  ClipWindingEpsilon ( w, plane->normal, plane->dist,
    ON_EPSILON, &front, &back );

  total = FilterSideIntoTree_r( front, side, ds, node->children[0] );
  total += FilterSideIntoTree_r( back, side, ds, node->children[1] );

  FreeWinding( w );
  return total;
 }


 if ( node->opaque ) {
  return 0;
 }

 dsr = malloc( sizeof( *dsr ) );
 dsr->outputNumber = numDrawSurfaces;
 dsr->nextRef = node->drawSurfReferences;
 node->drawSurfReferences = dsr;

 FreeWinding( w );
 return 1;
}
