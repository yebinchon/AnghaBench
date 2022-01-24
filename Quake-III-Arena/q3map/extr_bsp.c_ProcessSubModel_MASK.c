#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {TYPE_2__* headnode; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_24__ {TYPE_4__* brushlist; int /*<<< orphan*/  planenum; } ;
typedef  TYPE_2__ node_t ;
struct TYPE_25__ {TYPE_4__* brushes; int /*<<< orphan*/  firstDrawSurf; } ;
typedef  TYPE_3__ entity_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef  TYPE_4__ bspbrush_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_3__* entities ; 
 size_t entity_num ; 
 int /*<<< orphan*/  nomerge ; 
 int /*<<< orphan*/  nosubdivide ; 
 int /*<<< orphan*/  notjunc ; 
 int /*<<< orphan*/  numMapDrawSurfs ; 

void FUNC13( void ) {
	entity_t	*e;
	tree_t		*tree;
	bspbrush_t	*b, *bc;
	node_t		*node;

	FUNC3 ();

	e = &entities[entity_num];
	e->firstDrawSurf = numMapDrawSurfs;

	FUNC11( e );

	// just put all the brushes in an empty leaf
	// FIXME: patches?
	node = FUNC0();
	node->planenum = PLANENUM_LEAF;
	for ( b = e->brushes ; b ; b = b->next ) {
		bc = FUNC5( b );
		bc->next = node->brushlist;
		node->brushlist = bc;
	}

	tree = FUNC1();
	tree->headnode = node;

	FUNC4( e, tree );

	// subdivide each drawsurf as required by shader tesselation or fog
	if ( !nosubdivide ) {
		FUNC12( e, tree );
	}

	// merge together all common shaders on the same plane and remove 
	// all colinear points, so extra tjunctions won't be generated
	if ( !nomerge ) {
		FUNC10( e, tree );		// !@# testing
	}

	// add in any vertexes required to fix tjunctions
	if ( !notjunc ) {
		FUNC8( e );
	}

	// allocate lightmaps for faces and patches
	FUNC2( e );

	// add references to the final drawsurfs in the apropriate clusters
	FUNC7( e, tree );

	FUNC6 ( node );

	FUNC9( tree );
}