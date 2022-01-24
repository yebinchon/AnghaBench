#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {TYPE_1__** nodes; int /*<<< orphan*/  onnode; } ;
typedef  TYPE_2__ portal_t ;
struct TYPE_4__ {scalar_t__ planenum; int /*<<< orphan*/  opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC1(portal_t *p) {
	if (!p->onnode) {
		return qfalse;	// to global outsideleaf
	}

	if (p->nodes[0]->planenum != PLANENUM_LEAF
		|| p->nodes[1]->planenum != PLANENUM_LEAF) {
		FUNC0 ("Portal_EntityFlood: not a leaf");
	}

	if ( !p->nodes[0]->opaque && !p->nodes[1]->opaque ) {
		return qtrue;
	}

	return qfalse;
}