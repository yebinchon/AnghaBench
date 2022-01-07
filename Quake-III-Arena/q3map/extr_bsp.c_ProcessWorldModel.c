
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_29__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
typedef int qboolean ;
struct TYPE_30__ {int brushes; scalar_t__ firstDrawSurf; } ;
typedef TYPE_2__ entity_t ;
typedef int bspface_t ;


 int AddTriangleModels (TYPE_1__*) ;
 int AllocateLightmaps (TYPE_2__*) ;
 int BeginModel () ;
 int ClipSidesIntoTree (TYPE_2__*,TYPE_1__*) ;
 int EndModel (int ) ;
 TYPE_1__* FaceBSP (int *) ;
 int FillOutside (int ) ;
 int FilterDetailBrushesIntoTree (TYPE_2__*,TYPE_1__*) ;
 int FilterDrawsurfsIntoTree (TYPE_2__*,TYPE_1__*) ;
 int FilterStructuralBrushesIntoTree (TYPE_2__*,TYPE_1__*) ;
 int FixTJunctions (TYPE_2__*) ;
 int FloodAreas (TYPE_1__*) ;
 scalar_t__ FloodEntities (TYPE_1__*) ;
 int FogDrawSurfs () ;
 int FreeTree (TYPE_1__*) ;
 int LeakFile (TYPE_1__*) ;
 int * MakeStructuralBspFaceList (int ) ;
 int MakeTreePortals (TYPE_1__*) ;
 int * MakeVisibleBspFaceList (int ) ;
 int MergeSides (TYPE_2__*,TYPE_1__*) ;
 int NumberClusters (TYPE_1__*) ;
 int PatchMapDrawSurfs (TYPE_2__*) ;
 int SubdivideDrawSurfs (TYPE_2__*,TYPE_1__*) ;
 int WriteGLView (TYPE_1__*,int ) ;
 int WritePortalFile (TYPE_1__*) ;
 int _printf (char*) ;
 TYPE_2__* entities ;
 int exit (int ) ;
 scalar_t__ glview ;
 scalar_t__ leaktest ;
 int nofog ;
 int nomerge ;
 int nosubdivide ;
 int notjunc ;
 int qfalse ;
 int qtrue ;
 int source ;

void ProcessWorldModel( void ) {
 entity_t *e;
 tree_t *tree;
 bspface_t *faces;
 qboolean leaked;

 BeginModel();

 e = &entities[0];
 e->firstDrawSurf = 0;


 PatchMapDrawSurfs( e );



 faces = MakeStructuralBspFaceList ( entities[0].brushes );
 tree = FaceBSP( faces );
 MakeTreePortals (tree);
 FilterStructuralBrushesIntoTree( e, tree );


 if ( FloodEntities (tree) ) {


  FillOutside (tree->headnode);




  ClipSidesIntoTree( e, tree );

  faces = MakeVisibleBspFaceList( entities[0].brushes );
  FreeTree (tree);
  tree = FaceBSP( faces );
  MakeTreePortals( tree );
  FilterStructuralBrushesIntoTree( e, tree );
  leaked = qfalse;
 } else {
  _printf ("**********************\n");
  _printf ("******* leaked *******\n");
  _printf ("**********************\n");
  LeakFile (tree);
  if ( leaktest ) {
   _printf ("--- MAP LEAKED, ABORTING LEAKTEST ---\n");
   exit (0);
  }
  leaked = qtrue;




  ClipSidesIntoTree( e, tree );
 }


 NumberClusters( tree );
 if ( !leaked ) {
  WritePortalFile( tree );
 }
 if ( glview ) {

  WriteGLView( tree, source );
 }
 FloodAreas (tree);


 FilterDetailBrushesIntoTree( e, tree );


 AddTriangleModels( tree );



 if ( !nofog ) {
  FogDrawSurfs();
 }


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

 EndModel( tree->headnode );

 FreeTree (tree);
}
