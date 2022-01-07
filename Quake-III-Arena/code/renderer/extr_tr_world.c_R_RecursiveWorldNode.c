
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int msurface_t ;
struct TYPE_14__ {scalar_t__ visframe; scalar_t__* mins; scalar_t__* maxs; int contents; int nummarksurfaces; int ** firstmarksurface; struct TYPE_14__** children; TYPE_2__* plane; } ;
typedef TYPE_5__ mnode_t ;
struct TYPE_15__ {float radius; int origin; } ;
typedef TYPE_6__ dlight_t ;
struct TYPE_17__ {int integer; } ;
struct TYPE_13__ {scalar_t__** visBounds; int * frustum; } ;
struct TYPE_12__ {int c_leafs; } ;
struct TYPE_10__ {int num_dlights; TYPE_6__* dlights; } ;
struct TYPE_16__ {scalar_t__ visCount; TYPE_4__ viewParms; TYPE_3__ pc; TYPE_1__ refdef; } ;
struct TYPE_11__ {float dist; int normal; } ;


 int BoxOnPlaneSide (scalar_t__*,scalar_t__*,int *) ;
 float DotProduct (int ,int ) ;
 int R_AddWorldSurface (int *,int) ;
 TYPE_8__* r_nocull ;
 TYPE_7__ tr ;

__attribute__((used)) static void R_RecursiveWorldNode( mnode_t *node, int planeBits, int dlightBits ) {

 do {
  int newDlights[2];


  if (node->visframe != tr.visCount) {
   return;
  }




  if ( !r_nocull->integer ) {
   int r;

   if ( planeBits & 1 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[0]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~1;
    }
   }

   if ( planeBits & 2 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[1]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~2;
    }
   }

   if ( planeBits & 4 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[2]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~4;
    }
   }

   if ( planeBits & 8 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[3]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~8;
    }
   }

  }

  if ( node->contents != -1 ) {
   break;
  }





  newDlights[0] = 0;
  newDlights[1] = 0;
  if ( dlightBits ) {
   int i;

   for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
    dlight_t *dl;
    float dist;

    if ( dlightBits & ( 1 << i ) ) {
     dl = &tr.refdef.dlights[i];
     dist = DotProduct( dl->origin, node->plane->normal ) - node->plane->dist;

     if ( dist > -dl->radius ) {
      newDlights[0] |= ( 1 << i );
     }
     if ( dist < dl->radius ) {
      newDlights[1] |= ( 1 << i );
     }
    }
   }
  }


  R_RecursiveWorldNode (node->children[0], planeBits, newDlights[0] );


  node = node->children[1];
  dlightBits = newDlights[1];
 } while ( 1 );

 {

  int c;
  msurface_t *surf, **mark;

  tr.pc.c_leafs++;


  if ( node->mins[0] < tr.viewParms.visBounds[0][0] ) {
   tr.viewParms.visBounds[0][0] = node->mins[0];
  }
  if ( node->mins[1] < tr.viewParms.visBounds[0][1] ) {
   tr.viewParms.visBounds[0][1] = node->mins[1];
  }
  if ( node->mins[2] < tr.viewParms.visBounds[0][2] ) {
   tr.viewParms.visBounds[0][2] = node->mins[2];
  }

  if ( node->maxs[0] > tr.viewParms.visBounds[1][0] ) {
   tr.viewParms.visBounds[1][0] = node->maxs[0];
  }
  if ( node->maxs[1] > tr.viewParms.visBounds[1][1] ) {
   tr.viewParms.visBounds[1][1] = node->maxs[1];
  }
  if ( node->maxs[2] > tr.viewParms.visBounds[1][2] ) {
   tr.viewParms.visBounds[1][2] = node->maxs[2];
  }


  mark = node->firstmarksurface;
  c = node->nummarksurfaces;
  while (c--) {


   surf = *mark;
   R_AddWorldSurface( surf, dlightBits );
   mark++;
  }
 }

}
