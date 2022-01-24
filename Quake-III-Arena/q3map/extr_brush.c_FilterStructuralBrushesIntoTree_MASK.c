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
struct TYPE_11__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_2__ tree_t ;
struct TYPE_12__ {TYPE_4__* brushes; } ;
typedef  TYPE_3__ entity_t ;
struct TYPE_13__ {int numsides; TYPE_1__* sides; scalar_t__ detail; struct TYPE_13__* next; } ;
typedef  TYPE_4__ bspbrush_t ;
struct TYPE_10__ {int /*<<< orphan*/  visible; scalar_t__ winding; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC3( entity_t *e, tree_t *tree ) {
	bspbrush_t			*b, *newb;
	int					r;
	int					c_unique, c_clusters;
	int					i;

	FUNC2( "----- FilterStructuralBrushesIntoTree -----\n");

	c_unique = 0;
	c_clusters = 0;
	for ( b = e->brushes ; b ; b = b->next ) {
		if ( b->detail ) {
			continue;
		}
		c_unique++;
		newb = FUNC0( b );
		r = FUNC1( newb, tree->headnode );
		c_clusters += r;

		// mark all sides as visible so drawsurfs are created
		if ( r ) {
			for ( i = 0 ; i < b->numsides ; i++ ) {
				if ( b->sides[i].winding ) {
					b->sides[i].visible = qtrue;
				}
			}
		}
	}

	FUNC2( "%5i structural brushes\n", c_unique );
	FUNC2( "%5i cluster references\n", c_clusters );
}