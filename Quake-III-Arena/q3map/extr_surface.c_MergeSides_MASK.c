#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_t ;
struct TYPE_3__ {int firstDrawSurf; } ;
typedef  TYPE_1__ entity_t ;

/* Variables and functions */
 int numMapDrawSurfs ; 
 int /*<<< orphan*/  numSideRefs ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1( entity_t *e, tree_t *tree ) {
	int				i;

	FUNC0( "----- MergeSides -----\n");

	for ( i = e->firstDrawSurf ; i < numMapDrawSurfs ; i++ ) {
//			AddSideRef( side );
	}

	FUNC0( "%5i siderefs\n", numSideRefs );
}