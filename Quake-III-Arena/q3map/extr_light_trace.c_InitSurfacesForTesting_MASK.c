#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  radius; int /*<<< orphan*/  origin; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_1__ surfaceTest_t ;
struct TYPE_18__ {int contents; int surfaceFlags; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_19__ {size_t shaderNum; size_t firstVert; int numVerts; scalar_t__ surfaceType; int /*<<< orphan*/  patchWidth; int /*<<< orphan*/  numIndexes; } ;
typedef  TYPE_3__ dsurface_t ;
struct TYPE_20__ {int /*<<< orphan*/  xyz; } ;
typedef  TYPE_4__ drawVert_t ;
struct TYPE_21__ {int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CONTENTS_TRANSLUCENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ MST_PATCH ; 
 scalar_t__ MST_PLANAR ; 
 scalar_t__ MST_TRIANGLE_SOUP ; 
 int SURF_ALPHASHADOW ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* drawSurfaces ; 
 TYPE_4__* drawVerts ; 
 TYPE_7__* dshaders ; 
 TYPE_1__* FUNC6 (int) ; 
 int numDrawSurfaces ; 
 TYPE_1__** surfaceTest ; 

void FUNC7( void ) {

	int				i, j;
	dsurface_t		*dsurf;
	surfaceTest_t	*test;
	drawVert_t		*dvert;
	shaderInfo_t	*si;

	for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
		dsurf = &drawSurfaces[ i ];
		if ( !dsurf->numIndexes && !dsurf->patchWidth ) {
			continue;
		}

		// don't make surfaces for transparent objects
		// because we want light to pass through them
		si = FUNC4( dshaders[ dsurf->shaderNum].shader );
		if ( (si->contents & CONTENTS_TRANSLUCENT) && !(si->surfaceFlags & SURF_ALPHASHADOW) ) {
			continue;
		}

		test = FUNC6( sizeof( *test ) );
		surfaceTest[i] = test;
		FUNC1( test->mins, test->maxs );

		dvert = &drawVerts[ dsurf->firstVert ];
		for ( j = 0 ; j < dsurf->numVerts ; j++, dvert++ ) {
			FUNC0( dvert->xyz, test->mins, test->maxs );
		}

		FUNC5( test->mins, test->maxs, test->origin, &test->radius );

		if ( dsurf->surfaceType == MST_TRIANGLE_SOUP || dsurf->surfaceType == MST_PLANAR ) {
			FUNC3( dsurf, si, test );
		} else if ( dsurf->surfaceType == MST_PATCH ) {
			FUNC2( dsurf, si, test );
		}
	}
}