#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__** children; int /*<<< orphan*/  planenum; void* areaportal; void* opaque; TYPE_2__* brushlist; } ;
typedef  TYPE_1__ node_t ;
struct TYPE_10__ {int contents; scalar_t__ opaque; int /*<<< orphan*/  detail; struct TYPE_10__* next; } ;
typedef  TYPE_2__ bspbrush_t ;

/* Variables and functions */
 int CONTENTS_AREAPORTAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__**,TYPE_2__**) ; 
 void* qfalse ; 
 void* qtrue ; 

int FUNC2( bspbrush_t *b, node_t *node ) {
	bspbrush_t		*front, *back;
	int				c;

	if ( !b ) {
		return 0;
	}

	// add it to the leaf list
	if ( node->planenum == PLANENUM_LEAF ) {
		b->next = node->brushlist;
		node->brushlist = b;

		// classify the leaf by the structural brush
		if ( !b->detail ) {
			if ( b->opaque ) {
				node->opaque = qtrue;
				node->areaportal = qfalse;
			} else if ( b->contents & CONTENTS_AREAPORTAL ) {
				if ( !node->opaque ) {
					node->areaportal = qtrue;
				}
			}
		}

		return 1;
	}

	// split it by the node plane
	FUNC1 ( b, node->planenum, &front, &back );
	FUNC0( b );

	c = 0;
	c += FUNC2( front, node->children[0] );
	c += FUNC2( back, node->children[1] );

	return c;
}