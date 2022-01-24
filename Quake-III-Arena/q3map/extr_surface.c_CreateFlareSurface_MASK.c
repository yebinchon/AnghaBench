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
struct TYPE_8__ {int numVerts; int /*<<< orphan*/ * lightmapVecs; TYPE_2__* shaderInfo; int /*<<< orphan*/  lightmapOrigin; TYPE_1__* verts; int /*<<< orphan*/  flareSurface; } ;
typedef  TYPE_3__ mapDrawSurface_t ;
struct TYPE_7__ {char* flareShader; int /*<<< orphan*/  color; } ;
struct TYPE_6__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC7( mapDrawSurface_t *faceDs ) {
	mapDrawSurface_t	*ds;
	int					i;

	ds = FUNC0();

	if ( faceDs->shaderInfo->flareShader[0] ) {
		ds->shaderInfo = FUNC1( faceDs->shaderInfo->flareShader );
	} else {
		ds->shaderInfo = FUNC1( "flareshader" );
	}
	ds->flareSurface = qtrue;
	FUNC4( faceDs->lightmapVecs[2], ds->lightmapVecs[2] );

	// find midpoint
	FUNC3( ds->lightmapOrigin );
	for ( i = 0 ; i < faceDs->numVerts ; i++ ) {
		FUNC2( ds->lightmapOrigin, faceDs->verts[i].xyz, ds->lightmapOrigin );
	}
	FUNC6( ds->lightmapOrigin, 1.0/faceDs->numVerts, ds->lightmapOrigin );

	FUNC5( ds->lightmapOrigin, 2,  ds->lightmapVecs[2], ds->lightmapOrigin );

	FUNC4( faceDs->shaderInfo->color, ds->lightmapVecs[0] );

	// FIXME: fog
}