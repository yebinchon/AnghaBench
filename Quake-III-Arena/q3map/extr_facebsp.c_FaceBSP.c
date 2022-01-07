
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_6__* headnode; int maxs; int mins; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_12__ {TYPE_1__* w; struct TYPE_12__* next; } ;
typedef TYPE_3__ bspface_t ;
struct TYPE_13__ {int maxs; int mins; } ;
struct TYPE_10__ {int numpoints; int * p; } ;


 int AddPointToBounds (int ,int ,int ) ;
 TYPE_6__* AllocNode () ;
 TYPE_2__* AllocTree () ;
 int BuildFaceTree_r (TYPE_6__*,TYPE_3__*) ;
 int VectorCopy (int ,int ) ;
 int c_faceLeafs ;
 int qprintf (char*,...) ;

tree_t *FaceBSP( bspface_t *list ) {
 tree_t *tree;
 bspface_t *face;
 int i;
 int count;

 qprintf( "--- FaceBSP ---\n" );

 tree = AllocTree ();

 count = 0;
 for ( face = list ; face ; face = face->next ) {
  count++;
  for ( i = 0 ; i < face->w->numpoints ; i++ ) {
   AddPointToBounds( face->w->p[i], tree->mins, tree->maxs);
  }
 }
 qprintf( "%5i faces\n", count );

 tree->headnode = AllocNode();
 VectorCopy( tree->mins, tree->headnode->mins );
 VectorCopy( tree->maxs, tree->headnode->maxs );
 c_faceLeafs = 0;

 BuildFaceTree_r ( tree->headnode, list );

 qprintf( "%5i leafs\n", c_faceLeafs );

 return tree;
}
