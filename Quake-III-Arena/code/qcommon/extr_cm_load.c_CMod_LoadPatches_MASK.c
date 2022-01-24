#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_10__ {int filelen; scalar_t__ fileofs; } ;
typedef  TYPE_2__ lump_t ;
struct TYPE_11__ {int /*<<< orphan*/  shaderNum; int /*<<< orphan*/  firstVert; int /*<<< orphan*/  patchHeight; int /*<<< orphan*/  patchWidth; int /*<<< orphan*/  surfaceType; } ;
typedef  TYPE_3__ dsurface_t ;
struct TYPE_12__ {int /*<<< orphan*/ * xyz; } ;
typedef  TYPE_4__ drawVert_t ;
struct TYPE_13__ {int /*<<< orphan*/  pc; int /*<<< orphan*/  surfaceFlags; int /*<<< orphan*/  contents; } ;
typedef  TYPE_5__ cPatch_t ;
struct TYPE_14__ {int numSurfaces; TYPE_1__* shaders; TYPE_5__** surfaces; } ;
struct TYPE_9__ {int /*<<< orphan*/  surfaceFlags; int /*<<< orphan*/  contentFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_PATCH_VERTS ; 
 int MST_PATCH ; 
 TYPE_6__ cm ; 
 scalar_t__ cmod_base ; 
 int /*<<< orphan*/  h_high ; 

void FUNC5( lump_t *surfs, lump_t *verts ) {
	drawVert_t	*dv, *dv_p;
	dsurface_t	*in;
	int			count;
	int			i, j;
	int			c;
	cPatch_t	*patch;
	vec3_t		points[MAX_PATCH_VERTS];
	int			width, height;
	int			shaderNum;

	in = (void *)(cmod_base + surfs->fileofs);
	if (surfs->filelen % sizeof(*in))
		FUNC1 (ERR_DROP, "MOD_LoadBmodel: funny lump size");
	cm.numSurfaces = count = surfs->filelen / sizeof(*in);
	cm.surfaces = FUNC2( cm.numSurfaces * sizeof( cm.surfaces[0] ), h_high );

	dv = (void *)(cmod_base + verts->fileofs);
	if (verts->filelen % sizeof(*dv))
		FUNC1 (ERR_DROP, "MOD_LoadBmodel: funny lump size");

	// scan through all the surfaces, but only load patches,
	// not planar faces
	for ( i = 0 ; i < count ; i++, in++ ) {
		if ( FUNC4( in->surfaceType ) != MST_PATCH ) {
			continue;		// ignore other surfaces
		}
		// FIXME: check for non-colliding patches

		cm.surfaces[ i ] = patch = FUNC2( sizeof( *patch ), h_high );

		// load the full drawverts onto the stack
		width = FUNC4( in->patchWidth );
		height = FUNC4( in->patchHeight );
		c = width * height;
		if ( c > MAX_PATCH_VERTS ) {
			FUNC1( ERR_DROP, "ParseMesh: MAX_PATCH_VERTS" );
		}

		dv_p = dv + FUNC4( in->firstVert );
		for ( j = 0 ; j < c ; j++, dv_p++ ) {
			points[j][0] = FUNC3( dv_p->xyz[0] );
			points[j][1] = FUNC3( dv_p->xyz[1] );
			points[j][2] = FUNC3( dv_p->xyz[2] );
		}

		shaderNum = FUNC4( in->shaderNum );
		patch->contents = cm.shaders[shaderNum].contentFlags;
		patch->surfaceFlags = cm.shaders[shaderNum].surfaceFlags;

		// create the internal facet structure
		patch->pc = FUNC0( width, height, points );
	}
}