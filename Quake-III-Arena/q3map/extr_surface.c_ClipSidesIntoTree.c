
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_12__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_13__ {int planenum; int * visibleHull; scalar_t__ bevel; int * winding; TYPE_3__* shaderInfo; } ;
typedef TYPE_2__ side_t ;
struct TYPE_14__ {int surfaceFlags; int contents; scalar_t__ autosprite; } ;
typedef TYPE_3__ shaderInfo_t ;
struct TYPE_15__ {TYPE_5__* brushes; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_16__ {int numsides; TYPE_2__* sides; struct TYPE_16__* next; } ;
typedef TYPE_5__ bspbrush_t ;


 int CONTENTS_FOG ;
 int ClipSideIntoTree_r (int *,TYPE_2__*,int ) ;
 int * CopyWinding (int *) ;
 int DrawSurfaceForSide (TYPE_5__*,TYPE_2__*,int *) ;
 int Error (char*) ;
 int * ReverseWinding (int *) ;
 int SURF_NODRAW ;
 TYPE_2__* malloc (int) ;
 int qprintf (char*) ;

void ClipSidesIntoTree( entity_t *e, tree_t *tree ) {
 bspbrush_t *b;
 int i;
 winding_t *w;
 side_t *side, *newSide;
 shaderInfo_t *si;

 qprintf( "----- ClipSidesIntoTree -----\n");

 for ( b = e->brushes ; b ; b = b->next ) {
  for ( i = 0 ; i < b->numsides ; i++ ) {
   side = &b->sides[i];
   if ( !side->winding) {
    continue;
   }
   w = CopyWinding( side->winding );
   side->visibleHull = ((void*)0);
   ClipSideIntoTree_r( w, side, tree->headnode );

   w = side->visibleHull;
   if ( !w ) {
    continue;
   }
   si = side->shaderInfo;
   if ( !si ) {
    continue;
   }

   if ( si->surfaceFlags & SURF_NODRAW ) {
    continue;
   }


   if ( side->shaderInfo->autosprite ) {
    w = side->winding;
   }

   if ( side->bevel ) {
    Error( "monkey tried to create draw surface for brush bevel" );
   }

   DrawSurfaceForSide( b, side, w );


   if ( !(si->contents & CONTENTS_FOG) ) {
    continue;
   }


   w = ReverseWinding( w );

   newSide = malloc( sizeof( *side ) );
   *newSide = *side;
   newSide->visibleHull = w;
   newSide->planenum ^= 1;


   DrawSurfaceForSide( b, newSide, w );

  }
 }
}
