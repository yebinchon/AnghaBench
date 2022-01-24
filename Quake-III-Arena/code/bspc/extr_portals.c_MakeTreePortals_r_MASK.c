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
struct TYPE_6__ {scalar_t__ planenum; struct TYPE_6__** children; int /*<<< orphan*/ * maxs; int /*<<< orphan*/ * mins; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MAX_MAP_BOUNDS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  c_numportalizednodes ; 
 scalar_t__ cancelconversion ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5 (node_t *node)
{
	int		i;

#ifdef ME
	qprintf("\r%6d", ++c_numportalizednodes);
	if (cancelconversion) return;
#endif //ME

	FUNC0 (node);
	if (node->mins[0] >= node->maxs[0])
	{
		FUNC1("WARNING: node without a volume\n");
	}

	for (i=0 ; i<3 ; i++)
	{
		if (node->mins[i] < -MAX_MAP_BOUNDS || node->maxs[i] > MAX_MAP_BOUNDS)
		{
			FUNC1("WARNING: node with unbounded volume\n");
			break;
		}
	}
	if (node->planenum == PLANENUM_LEAF)
		return;

	FUNC2 (node);
	FUNC3 (node);

	FUNC5 (node->children[0]);
	FUNC5 (node->children[1]);
}