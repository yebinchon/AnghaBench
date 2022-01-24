#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* mins; scalar_t__* maxs; scalar_t__ planenum; struct TYPE_6__** children; int /*<<< orphan*/ * referencepoint; int /*<<< orphan*/  tinyportals; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ MAX_WORLD_COORD ; 
 scalar_t__ MIN_WORLD_COORD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4 (node_t *node)
{
	int		i;

	FUNC0 (node);
	if (node->mins[0] >= node->maxs[0])
	{
		FUNC3 ("WARNING: node without a volume\n");
		FUNC3("node has %d tiny portals\n", node->tinyportals);
		FUNC3("node reference point %1.2f %1.2f %1.2f\n", node->referencepoint[0],
															node->referencepoint[1],
															node->referencepoint[2]);
	}

	for (i=0 ; i<3 ; i++)
	{
		if (node->mins[i] < MIN_WORLD_COORD || node->maxs[i] > MAX_WORLD_COORD)
		{
			FUNC3 ("WARNING: node with unbounded volume\n");
			break;
		}
	}
	if (node->planenum == PLANENUM_LEAF)
		return;

	FUNC1 (node);
	FUNC2 (node);

	FUNC4 (node->children[0]);
	FUNC4 (node->children[1]);
}