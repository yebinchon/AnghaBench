
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int widthtable ;
struct TYPE_24__ {int lightmapSampleSize; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_25__ {scalar_t__ width; scalar_t__ height; int * verts; } ;
typedef TYPE_2__ mesh_t ;
struct TYPE_26__ {int numFacets; TYPE_5__* facets; TYPE_1__* shader; int trisoup; int patch; TYPE_2__* detailMesh; } ;
typedef TYPE_3__ lsurfaceTest_t ;
typedef int heighttable ;
struct TYPE_27__ {scalar_t__ patchWidth; scalar_t__ patchHeight; size_t firstVert; scalar_t__ lightmapNum; scalar_t__ lightmapWidth; scalar_t__ lightmapHeight; } ;
typedef TYPE_4__ dsurface_t ;
typedef int drawVert_t ;
struct TYPE_28__ {int x; int y; int width; int height; } ;


 int Error (char*) ;
 int FreeMesh (TYPE_2__*) ;
 int LIGHTMAP_SIZE ;
 int MakeMeshNormals (TYPE_2__) ;
 int PutMeshOnCurve (TYPE_2__) ;
 TYPE_2__* RemoveLinearMeshColumnsRows (TYPE_2__*) ;
 TYPE_2__* SubdivideMesh (TYPE_2__,int,int) ;
 TYPE_2__* SubdivideMeshQuads (TYPE_2__*,int,int,int*,int*) ;
 scalar_t__ VL_GenerateFacetFor3Points (TYPE_4__*,TYPE_1__*,TYPE_5__*,int *,int *,int *) ;
 scalar_t__ VL_GenerateFacetFor4Points (TYPE_4__*,TYPE_1__*,TYPE_5__*,int *,int *,int *,int *) ;
 int * drawVerts ;
 TYPE_5__* malloc (int) ;
 int memset (int*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int samplesize ;

void VL_FacetsForPatch( dsurface_t *dsurf, int surfaceNum, shaderInfo_t *si, lsurfaceTest_t *test ) {
 int i, j, x, y;
 drawVert_t *v1, *v2, *v3, *v4;
 int count, ssize;
 mesh_t mesh;
 mesh_t *subdivided, *detailmesh, *newmesh;
 int widthtable[LIGHTMAP_SIZE], heighttable[LIGHTMAP_SIZE];

 mesh.width = dsurf->patchWidth;
 mesh.height = dsurf->patchHeight;
 mesh.verts = &drawVerts[ dsurf->firstVert ];

 newmesh = SubdivideMesh( mesh, 8, 999 );
 PutMeshOnCurve( *newmesh );
 MakeMeshNormals( *newmesh );

 subdivided = RemoveLinearMeshColumnsRows( newmesh );
 FreeMesh(newmesh);




 ssize = samplesize;
 if (si->lightmapSampleSize)
  ssize = si->lightmapSampleSize;

 if ( dsurf->lightmapNum >= 0 ) {

  detailmesh = SubdivideMeshQuads( subdivided, ssize, LIGHTMAP_SIZE, widthtable, heighttable);
  test->detailMesh = detailmesh;




  if ( detailmesh->width != dsurf->lightmapWidth || detailmesh->height != dsurf->lightmapHeight ) {
   Error( "Mesh lightmap miscount");
  }
 }
 else {
  test->detailMesh = ((void*)0);
  memset(widthtable, 0, sizeof(widthtable));
  memset(heighttable, 0, sizeof(heighttable));
 }

 test->patch = qtrue;
 test->trisoup = qfalse;
 test->numFacets = ( subdivided->width - 1 ) * ( subdivided->height - 1 ) * 2;
 test->facets = malloc( sizeof( test->facets[0] ) * test->numFacets );
 test->shader = si;

 count = 0;
 x = 0;
 for ( i = 0 ; i < subdivided->width - 1 ; i++ ) {
  y = 0;
  for ( j = 0 ; j < subdivided->height - 1 ; j++ ) {

   v1 = subdivided->verts + j * subdivided->width + i;
   v2 = v1 + 1;
   v3 = v1 + subdivided->width + 1;
   v4 = v1 + subdivided->width;

   if ( VL_GenerateFacetFor4Points( dsurf, si, &test->facets[count], v1, v4, v3, v2 ) ) {
    test->facets[count].x = x;
    test->facets[count].y = y;
    test->facets[count].width = widthtable[i];
    test->facets[count].height = heighttable[j];
    count++;
   } else {
    if (VL_GenerateFacetFor3Points( dsurf, si, &test->facets[count], v1, v4, v3 )) {
     test->facets[count].x = x;
     test->facets[count].y = y;
     test->facets[count].width = widthtable[i];
     test->facets[count].height = heighttable[j];
     count++;
    }
    if (VL_GenerateFacetFor3Points( dsurf, si, &test->facets[count], v1, v3, v2 )) {
     test->facets[count].x = x;
     test->facets[count].y = y;
     test->facets[count].width = widthtable[i];
     test->facets[count].height = heighttable[j];
     count++;
    }
   }
   y += heighttable[j];
  }
  x += widthtable[i];
 }
 test->numFacets = count;

 FreeMesh(subdivided);
}
