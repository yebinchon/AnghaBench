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
struct TYPE_3__ {scalar_t__ planenum; int contents; int cluster; struct TYPE_3__** children; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int CONTENTS_SOLID ; 
 scalar_t__ PLANENUM_LEAF ; 

void FUNC0 (node_t *node, int num)
{
	if (node->planenum == PLANENUM_LEAF)
	{
		if (node->contents & CONTENTS_SOLID)
			node->cluster = -1;
		else
			node->cluster = num;
		return;
	}
	node->cluster = num;
	FUNC0 (node->children[0], num);
	FUNC0 (node->children[1], num);
}