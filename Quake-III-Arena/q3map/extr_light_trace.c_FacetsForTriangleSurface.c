
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numFacets; int * facets; int * shader; int patch; } ;
typedef TYPE_1__ surfaceTest_t ;
typedef int shaderInfo_t ;
struct TYPE_6__ {int numIndexes; int firstIndex; int firstVert; } ;
typedef TYPE_2__ dsurface_t ;
typedef int drawVert_t ;


 scalar_t__ CM_GenerateFacetFor3Points (int *,int *,int *,int *) ;
 scalar_t__ CM_GenerateFacetFor4Points (int *,int *,int *,int *,int *) ;
 int* drawIndexes ;
 int * drawVerts ;
 int * malloc (int) ;
 int qfalse ;

void FacetsForTriangleSurface( dsurface_t *dsurf, shaderInfo_t *si, surfaceTest_t *test ) {
 int i;
 drawVert_t *v1, *v2, *v3, *v4;
 int count;
 int i1, i2, i3, i4, i5, i6;

 test->patch = qfalse;
 test->numFacets = dsurf->numIndexes / 3;
 test->facets = malloc( sizeof( test->facets[0] ) * test->numFacets );
 test->shader = si;

 count = 0;
 for ( i = 0 ; i < test->numFacets ; i++ ) {
  i1 = drawIndexes[ dsurf->firstIndex + i*3 ];
  i2 = drawIndexes[ dsurf->firstIndex + i*3 + 1 ];
  i3 = drawIndexes[ dsurf->firstIndex + i*3 + 2 ];

  v1 = &drawVerts[ dsurf->firstVert + i1 ];
  v2 = &drawVerts[ dsurf->firstVert + i2 ];
  v3 = &drawVerts[ dsurf->firstVert + i3 ];


  if ( i != test->numFacets - 1 ) {
   i4 = drawIndexes[ dsurf->firstIndex + i*3 + 3 ];
   i5 = drawIndexes[ dsurf->firstIndex + i*3 + 4 ];
   i6 = drawIndexes[ dsurf->firstIndex + i*3 + 5 ];
   if ( i4 == i3 && i5 == i2 ) {
    v4 = &drawVerts[ dsurf->firstVert + i6 ];
    if ( CM_GenerateFacetFor4Points( &test->facets[count], v1, v2, v4, v3 ) ) {
     count++;
     i++;
     continue;
    }
   }
  }

  if (CM_GenerateFacetFor3Points( &test->facets[count], v1, v2, v3 ))
   count++;
 }


 test->numFacets = count;
}
