#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_30__ {int /*<<< orphan*/  brushes; scalar_t__ firstDrawSurf; } ;
typedef  TYPE_2__ entity_t ;
typedef  int /*<<< orphan*/  bspface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 TYPE_2__* entities ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ glview ; 
 scalar_t__ leaktest ; 
 int /*<<< orphan*/  nofog ; 
 int /*<<< orphan*/  nomerge ; 
 int /*<<< orphan*/  nosubdivide ; 
 int /*<<< orphan*/  notjunc ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  source ; 

void FUNC27( void ) {
	entity_t	*e;
	tree_t		*tree;
	bspface_t	*faces;
	qboolean	leaked;

	FUNC2();

	e = &entities[0];
	e->firstDrawSurf = 0;//numMapDrawSurfs;

	// check for patches with adjacent edges that need to LOD together
	FUNC21( e );

	// build an initial bsp tree using all of the sides
	// of all of the structural brushes
	faces = FUNC16 ( entities[0].brushes );
	tree = FUNC5( faces );
	FUNC17 (tree);
	FUNC9( e, tree );

	// see if the bsp is completely enclosed
	if ( FUNC12 (tree) ) {
		// rebuild a better bsp tree using only the
		// sides that are visible from the inside
		FUNC6 (tree->headnode);

		// chop the sides to the convex hull of
		// their visible fragments, giving us the smallest
		// polygons 
		FUNC3( e, tree );

		faces = FUNC18( entities[0].brushes );
		FUNC14 (tree);
		tree = FUNC5( faces );
		FUNC17( tree );
		FUNC9( e, tree );
		leaked = qfalse;
	} else {
		FUNC25 ("**********************\n");
		FUNC25 ("******* leaked *******\n");
		FUNC25 ("**********************\n");
		FUNC15 (tree);
		if ( leaktest ) {
			FUNC25 ("--- MAP LEAKED, ABORTING LEAKTEST ---\n");
			FUNC26 (0);
		}
		leaked = qtrue;

		// chop the sides to the convex hull of
		// their visible fragments, giving us the smallest
		// polygons 
		FUNC3( e, tree );
	}

	// save out information for visibility processing
	FUNC20( tree );
	if ( !leaked ) {
		FUNC24( tree );
	}
	if ( glview ) {
		// dump the portals for debugging
		FUNC23( tree, source );
	}
	FUNC11 (tree);

	// add references to the detail brushes
	FUNC7( e, tree );

	// create drawsurfs for triangle models
	FUNC0( tree );

	// drawsurfs that cross fog boundaries will need to
	// be split along the bound
	if ( !nofog ) {
		FUNC13();		// may fragment drawsurfs
	}

	// subdivide each drawsurf as required by shader tesselation
	if ( !nosubdivide ) {
		FUNC22( e, tree );
	}

	// merge together all common shaders on the same plane and remove 
	// all colinear points, so extra tjunctions won't be generated
	if ( !nomerge ) {
		FUNC19( e, tree );		// !@# testing
	}

	// add in any vertexes required to fix tjunctions
	if ( !notjunc ) {
		FUNC10( e );
	}

	// allocate lightmaps for faces and patches
	FUNC1( e );

	// add references to the final drawsurfs in the apropriate clusters
	FUNC8( e, tree );

	FUNC4( tree->headnode );

	FUNC14 (tree);
}