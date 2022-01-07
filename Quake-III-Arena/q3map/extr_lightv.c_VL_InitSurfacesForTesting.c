
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int contents; int surfaceFlags; scalar_t__ forceVLight; scalar_t__ forceTraceLight; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_18__ {int numFacets; int radius; int origin; int maxs; int mins; TYPE_3__* facets; void* always_vlight; void* always_tracelight; scalar_t__ numvolumes; int mutex; } ;
typedef TYPE_2__ lsurfaceTest_t ;
struct TYPE_19__ {int numpoints; int * points; } ;
typedef TYPE_3__ lFacet_t ;
struct TYPE_20__ {size_t shaderNum; scalar_t__ lightmapNum; scalar_t__ surfaceType; int patchWidth; int numIndexes; } ;
typedef TYPE_4__ dsurface_t ;
struct TYPE_21__ {int shader; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int CONTENTS_TRANSLUCENT ;
 int ClearBounds (int ,int ) ;
 int Error (char*,scalar_t__) ;
 scalar_t__ MAX_FACETS ;
 scalar_t__ MST_PATCH ;
 scalar_t__ MST_PLANAR ;
 scalar_t__ MST_TRIANGLE_SOUP ;
 int MutexAlloc () ;
 int SURF_ALPHASHADOW ;
 TYPE_1__* ShaderInfoForShader (int ) ;
 int VL_FacetsForPatch (TYPE_4__*,int,TYPE_1__*,TYPE_2__*) ;
 int VL_FacetsForTriangleSurface (TYPE_4__*,TYPE_1__*,TYPE_2__*) ;
 int VL_LinkSurfaces () ;
 int VL_SphereFromBounds (int ,int ,int ,int *) ;
 int _printf (char*,...) ;
 TYPE_4__* drawSurfaces ;
 TYPE_8__* dshaders ;
 scalar_t__* entitySurface ;
 TYPE_2__** lsurfaceTest ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int numDrawSurfaces ;
 scalar_t__ numfacets ;
 void* qtrue ;

void VL_InitSurfacesForTesting( void ) {

 int i, j, k;
 dsurface_t *dsurf;
 lsurfaceTest_t *test;
 shaderInfo_t *si;
 lFacet_t *facet;

 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {

  if ( entitySurface[i] )
   continue;

  dsurf = &drawSurfaces[ i ];
  if ( !dsurf->numIndexes && !dsurf->patchWidth ) {
   continue;
  }

  si = ShaderInfoForShader( dshaders[ dsurf->shaderNum].shader );

  if ( (si->contents & CONTENTS_TRANSLUCENT) && !(si->surfaceFlags & SURF_ALPHASHADOW) ) {

   if ( dsurf->lightmapNum < 0 )
    continue;
  }

  test = malloc( sizeof( *test ) );
  memset(test, 0, sizeof( *test ));
  test->mutex = MutexAlloc();
  test->numvolumes = 0;
  if (si->forceTraceLight)
   test->always_tracelight = qtrue;
  else if (si->forceVLight)
   test->always_vlight = qtrue;
  lsurfaceTest[i] = test;

  if ( dsurf->surfaceType == MST_TRIANGLE_SOUP || dsurf->surfaceType == MST_PLANAR ) {
   VL_FacetsForTriangleSurface( dsurf, si, test );
  } else if ( dsurf->surfaceType == MST_PATCH ) {
   VL_FacetsForPatch( dsurf, i, si, test );
  }
  if (numfacets >= MAX_FACETS)
   Error("numfacets >= MAX_FACETS (%d)", MAX_FACETS);

  ClearBounds( test->mins, test->maxs );
  for (j = 0; j < test->numFacets; j++)
  {
   facet = &test->facets[j];
   for ( k = 0 ; k < facet->numpoints; k++) {
    AddPointToBounds( facet->points[k], test->mins, test->maxs );
   }
  }
  VL_SphereFromBounds( test->mins, test->maxs, test->origin, &test->radius );
 }
 _printf("%6d facets\n", numfacets);
 _printf("linking surfaces...\n");
 VL_LinkSurfaces();
}
