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
struct TYPE_3__ {int planenum; struct TYPE_3__* parent; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1 (int pnum, node_t *node)
{
	node_t	*p;

	for (p = node->parent; p; p = p->parent)
	{
		if (p->planenum == pnum) FUNC0("Tried parent");
	} //end for
}