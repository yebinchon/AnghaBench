
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int radius; int origin; int maxs; int mins; } ;
typedef TYPE_1__ surfaceTest_t ;
struct TYPE_18__ {int contents; int surfaceFlags; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_19__ {size_t shaderNum; size_t firstVert; int numVerts; scalar_t__ surfaceType; int patchWidth; int numIndexes; } ;
typedef TYPE_3__ dsurface_t ;
struct TYPE_20__ {int xyz; } ;
typedef TYPE_4__ drawVert_t ;
struct TYPE_21__ {int shader; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int CONTENTS_TRANSLUCENT ;
 int ClearBounds (int ,int ) ;
 int FacetsForPatch (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int FacetsForTriangleSurface (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ MST_PATCH ;
 scalar_t__ MST_PLANAR ;
 scalar_t__ MST_TRIANGLE_SOUP ;
 int SURF_ALPHASHADOW ;
 TYPE_2__* ShaderInfoForShader (int ) ;
 int SphereFromBounds (int ,int ,int ,int *) ;
 TYPE_3__* drawSurfaces ;
 TYPE_4__* drawVerts ;
 TYPE_7__* dshaders ;
 TYPE_1__* malloc (int) ;
 int numDrawSurfaces ;
 TYPE_1__** surfaceTest ;

void InitSurfacesForTesting( void ) {

 int i, j;
 dsurface_t *dsurf;
 surfaceTest_t *test;
 drawVert_t *dvert;
 shaderInfo_t *si;

 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
  dsurf = &drawSurfaces[ i ];
  if ( !dsurf->numIndexes && !dsurf->patchWidth ) {
   continue;
  }



  si = ShaderInfoForShader( dshaders[ dsurf->shaderNum].shader );
  if ( (si->contents & CONTENTS_TRANSLUCENT) && !(si->surfaceFlags & SURF_ALPHASHADOW) ) {
   continue;
  }

  test = malloc( sizeof( *test ) );
  surfaceTest[i] = test;
  ClearBounds( test->mins, test->maxs );

  dvert = &drawVerts[ dsurf->firstVert ];
  for ( j = 0 ; j < dsurf->numVerts ; j++, dvert++ ) {
   AddPointToBounds( dvert->xyz, test->mins, test->maxs );
  }

  SphereFromBounds( test->mins, test->maxs, test->origin, &test->radius );

  if ( dsurf->surfaceType == MST_TRIANGLE_SOUP || dsurf->surfaceType == MST_PLANAR ) {
   FacetsForTriangleSurface( dsurf, si, test );
  } else if ( dsurf->surfaceType == MST_PATCH ) {
   FacetsForPatch( dsurf, si, test );
  }
 }
}
