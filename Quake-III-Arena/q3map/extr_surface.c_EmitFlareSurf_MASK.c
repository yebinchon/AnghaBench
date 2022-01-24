#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  fogNum; TYPE_1__* shaderInfo; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_8__ {int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  shaderNum; int /*<<< orphan*/  surfaceType; } ;
typedef  TYPE_3__ dsurface_t ;
struct TYPE_6__ {int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t MAX_MAP_DRAW_SURFS ; 
 int /*<<< orphan*/  MST_FLARE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* drawSurfaces ; 
 size_t numDrawSurfaces ; 

void FUNC3( mapDrawSurface_t *ds ) {
	dsurface_t		*out;

	if ( numDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
		FUNC1( "MAX_MAP_DRAW_SURFS" );
	}
	out = &drawSurfaces[ numDrawSurfaces ];
	numDrawSurfaces++;

	out->surfaceType = MST_FLARE;
	out->shaderNum = FUNC0( ds->shaderInfo->shader );
	out->fogNum = ds->fogNum;

	FUNC2( ds->lightmapOrigin, out->lightmapOrigin );
	FUNC2( ds->lightmapVecs[0], out->lightmapVecs[0] );	// color
	FUNC2( ds->lightmapVecs[2], out->lightmapVecs[2] );
}