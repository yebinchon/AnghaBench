#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widthtable ;
struct TYPE_24__ {int lightmapSampleSize; } ;
typedef  TYPE_1__ shaderInfo_t ;
struct TYPE_25__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/ * verts; } ;
typedef  TYPE_2__ mesh_t ;
struct TYPE_26__ {int numFacets; TYPE_5__* facets; TYPE_1__* shader; int /*<<< orphan*/  trisoup; int /*<<< orphan*/  patch; TYPE_2__* detailMesh; } ;
typedef  TYPE_3__ lsurfaceTest_t ;
typedef  int /*<<< orphan*/  heighttable ;
struct TYPE_27__ {scalar_t__ patchWidth; scalar_t__ patchHeight; size_t firstVert; scalar_t__ lightmapNum; scalar_t__ lightmapWidth; scalar_t__ lightmapHeight; } ;
typedef  TYPE_4__ dsurface_t ;
typedef  int /*<<< orphan*/  drawVert_t ;
struct TYPE_28__ {int x; int y; int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int LIGHTMAP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__,int,int) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,int,int,int*,int*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * drawVerts ; 
 TYPE_5__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int samplesize ; 

void FUNC11( dsurface_t *dsurf, int surfaceNum, shaderInfo_t *si, lsurfaceTest_t *test ) {
	int			i, j, x, y;
	drawVert_t	*v1, *v2, *v3, *v4;
	int			count, ssize;
	mesh_t		mesh;
	mesh_t		*subdivided, *detailmesh, *newmesh;
	int widthtable[LIGHTMAP_SIZE], heighttable[LIGHTMAP_SIZE];

	mesh.width = dsurf->patchWidth;
	mesh.height = dsurf->patchHeight;
	mesh.verts = &drawVerts[ dsurf->firstVert ];

	newmesh = FUNC5( mesh, 8, 999 );
	FUNC3( *newmesh );
	FUNC2( *newmesh );

	subdivided = FUNC4( newmesh );
	FUNC1(newmesh);

	//	DebugNet_RemoveAllPolys();
	//	DebugNet_DrawMesh(subdivided);

	ssize = samplesize;
	if (si->lightmapSampleSize)
		ssize = si->lightmapSampleSize;

	if ( dsurf->lightmapNum >= 0 ) {

		detailmesh = FUNC6( subdivided, ssize, LIGHTMAP_SIZE, widthtable, heighttable);
		test->detailMesh = detailmesh;

		// DebugNet_RemoveAllPolys();
		// DebugNet_DrawMesh(detailmesh);

		if ( detailmesh->width != dsurf->lightmapWidth || detailmesh->height != dsurf->lightmapHeight ) {
			FUNC0( "Mesh lightmap miscount");
		}
	}
	else {
		test->detailMesh = NULL;
		FUNC10(widthtable, 0, sizeof(widthtable));
		FUNC10(heighttable, 0, sizeof(heighttable));
	}

	test->patch = qtrue;
	test->trisoup = qfalse;
	test->numFacets = ( subdivided->width - 1 ) * ( subdivided->height - 1 ) * 2;
	test->facets = FUNC9( sizeof( test->facets[0] ) * test->numFacets );
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

			if ( FUNC8( dsurf, si, &test->facets[count], v1, v4, v3, v2 ) ) {
				test->facets[count].x = x;
				test->facets[count].y = y;
				test->facets[count].width = widthtable[i];
				test->facets[count].height = heighttable[j];
				count++;
			} else {
				if (FUNC7( dsurf, si, &test->facets[count], v1, v4, v3 )) {
					test->facets[count].x = x;
					test->facets[count].y = y;
					test->facets[count].width = widthtable[i];
					test->facets[count].height = heighttable[j];
					count++;
				}
				if (FUNC7( dsurf, si, &test->facets[count], v1, v3, v2 )) {
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

	FUNC1(subdivided);
}