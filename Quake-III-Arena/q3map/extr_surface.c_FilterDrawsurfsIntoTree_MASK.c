#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_t ;
struct TYPE_16__ {TYPE_1__* shaderInfo; scalar_t__ flareSurface; scalar_t__ patch; scalar_t__ miscModel; int /*<<< orphan*/  numVerts; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_17__ {int firstDrawSurf; } ;
typedef  TYPE_3__ entity_t ;
struct TYPE_15__ {scalar_t__* flareShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int c_fanSurfaces ; 
 int c_stripSurfaces ; 
 TYPE_2__* mapDrawSurfs ; 
 int numMapDrawSurfs ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

void FUNC10( entity_t *e, tree_t *tree ) {
	int				i;
	mapDrawSurface_t	*ds;
	int				refs;
	int				c_surfs, c_refs;

	FUNC9( "----- FilterDrawsurfsIntoTree -----\n");

	c_surfs = 0;
	c_refs = 0;
	for ( i = e->firstDrawSurf ; i < numMapDrawSurfs ; i++ ) {
		ds = &mapDrawSurfs[i];

		if ( !ds->numVerts && !ds->flareSurface ) {
			continue;
		}
		if ( ds->miscModel ) {
			refs = FUNC7( ds, tree );
			FUNC2( ds );		
		} else if ( ds->patch ) {
			refs = FUNC8( ds, tree );
			FUNC3( ds );		
		} else if ( ds->flareSurface ) {
			refs = FUNC6( ds, tree );
			FUNC1( ds );					
		} else {
			refs = FUNC5( ds, tree );
//			if ( ds->shaderInfo->value >= 1000 ) { // ds->shaderInfo->flareShader[0] ) {
			if ( ds->shaderInfo->flareShader[0] ) {
				FUNC0( ds );
			}
			FUNC4( ds );		
		}
		if ( refs > 0 ) {
			c_surfs++;
			c_refs += refs;
		}
	}
	FUNC9( "%5i emited drawsurfs\n", c_surfs );
	FUNC9( "%5i references\n", c_refs );
	FUNC9( "%5i stripfaces\n", c_stripSurfaces );
	FUNC9( "%5i fanfaces\n", c_fanSurfaces );
}