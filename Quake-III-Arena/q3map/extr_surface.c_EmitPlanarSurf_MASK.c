#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int numVerts; int /*<<< orphan*/ * verts; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  lightmapHeight; int /*<<< orphan*/  lightmapWidth; int /*<<< orphan*/  lightmapY; int /*<<< orphan*/  lightmapX; int /*<<< orphan*/  lightmapNum; int /*<<< orphan*/  fogNum; TYPE_1__* shaderInfo; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_12__ {size_t firstVert; int numVerts; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  lightmapHeight; int /*<<< orphan*/  lightmapWidth; int /*<<< orphan*/  lightmapY; int /*<<< orphan*/  lightmapX; int /*<<< orphan*/  lightmapNum; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  shaderNum; int /*<<< orphan*/  surfaceType; } ;
typedef  TYPE_3__ dsurface_t ;
struct TYPE_13__ {int* color; } ;
typedef  TYPE_4__ drawVert_t ;
struct TYPE_10__ {int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t MAX_MAP_DRAW_SURFS ; 
 size_t MAX_MAP_DRAW_VERTS ; 
 int /*<<< orphan*/  MST_PLANAR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* drawSurfaces ; 
 TYPE_4__* drawVerts ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 size_t numDrawSurfaces ; 
 size_t numDrawVerts ; 

void FUNC5( mapDrawSurface_t *ds ) {
	int				j;
	dsurface_t		*out;
	drawVert_t		*outv;

	if ( numDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
		FUNC1( "MAX_MAP_DRAW_SURFS" );
	}
	out = &drawSurfaces[ numDrawSurfaces ];
	numDrawSurfaces++;

	out->surfaceType = MST_PLANAR;
	out->shaderNum = FUNC0( ds->shaderInfo->shader );
	out->firstVert = numDrawVerts;
	out->numVerts = ds->numVerts;
	out->fogNum = ds->fogNum;
	out->lightmapNum = ds->lightmapNum;
	out->lightmapX = ds->lightmapX;
	out->lightmapY = ds->lightmapY;
	out->lightmapWidth = ds->lightmapWidth;
	out->lightmapHeight = ds->lightmapHeight;

	FUNC3( ds->lightmapOrigin, out->lightmapOrigin );
	FUNC3( ds->lightmapVecs[0], out->lightmapVecs[0] );
	FUNC3( ds->lightmapVecs[1], out->lightmapVecs[1] );
	FUNC3( ds->lightmapVecs[2], out->lightmapVecs[2] );

	for ( j = 0 ; j < ds->numVerts ; j++ ) {
		if ( numDrawVerts == MAX_MAP_DRAW_VERTS ) {
			FUNC1( "MAX_MAP_DRAW_VERTS" );
		}
		outv = &drawVerts[ numDrawVerts ];
		numDrawVerts++;
		FUNC4( outv, &ds->verts[ j ], sizeof( *outv ) );
		outv->color[0] = 255;
		outv->color[1] = 255;
		outv->color[2] = 255;
		outv->color[3] = 255;
	}

	// create the indexes
	FUNC2( out );
}