
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {TYPE_2__* headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_24__ {TYPE_4__* brushlist; int planenum; } ;
typedef TYPE_2__ node_t ;
struct TYPE_25__ {TYPE_4__* brushes; int firstDrawSurf; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef TYPE_4__ bspbrush_t ;


 TYPE_2__* AllocNode () ;
 TYPE_1__* AllocTree () ;
 int AllocateLightmaps (TYPE_3__*) ;
 int BeginModel () ;
 int ClipSidesIntoTree (TYPE_3__*,TYPE_1__*) ;
 TYPE_4__* CopyBrush (TYPE_4__*) ;
 int EndModel (TYPE_2__*) ;
 int FilterDrawsurfsIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FixTJunctions (TYPE_3__*) ;
 int FreeTree (TYPE_1__*) ;
 int MergeSides (TYPE_3__*,TYPE_1__*) ;
 int PLANENUM_LEAF ;
 int PatchMapDrawSurfs (TYPE_3__*) ;
 int SubdivideDrawSurfs (TYPE_3__*,TYPE_1__*) ;
 TYPE_3__* entities ;
 size_t entity_num ;
 int nomerge ;
 int nosubdivide ;
 int notjunc ;
 int numMapDrawSurfs ;

void ProcessSubModel( void ) {
 entity_t *e;
 tree_t *tree;
 bspbrush_t *b, *bc;
 node_t *node;

 BeginModel ();

 e = &entities[entity_num];
 e->firstDrawSurf = numMapDrawSurfs;

 PatchMapDrawSurfs( e );



 node = AllocNode();
 node->planenum = PLANENUM_LEAF;
 for ( b = e->brushes ; b ; b = b->next ) {
  bc = CopyBrush( b );
  bc->next = node->brushlist;
  node->brushlist = bc;
 }

 tree = AllocTree();
 tree->headnode = node;

 ClipSidesIntoTree( e, tree );


 if ( !nosubdivide ) {
  SubdivideDrawSurfs( e, tree );
 }



 if ( !nomerge ) {
  MergeSides( e, tree );
 }


 if ( !notjunc ) {
  FixTJunctions( e );
 }


 AllocateLightmaps( e );


 FilterDrawsurfsIntoTree( e, tree );

 EndModel ( node );

 FreeTree( tree );
}
