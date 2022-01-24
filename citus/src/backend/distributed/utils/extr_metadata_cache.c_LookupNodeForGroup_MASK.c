#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_5__ {scalar_t__ groupId; } ;
typedef  TYPE_1__ WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ReadFromSecondaries ; 
#define  USE_SECONDARY_NODES_ALWAYS 129 
#define  USE_SECONDARY_NODES_NEVER 128 
 TYPE_1__** WorkerNodeArray ; 
 int WorkerNodeCount ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

WorkerNode *
FUNC4(int32 groupId)
{
	bool foundAnyNodes = false;
	int workerNodeIndex = 0;

	FUNC1();

	for (workerNodeIndex = 0; workerNodeIndex < WorkerNodeCount; workerNodeIndex++)
	{
		WorkerNode *workerNode = WorkerNodeArray[workerNodeIndex];
		int32 workerNodeGroupId = workerNode->groupId;
		if (workerNodeGroupId != groupId)
		{
			continue;
		}

		foundAnyNodes = true;

		if (FUNC0(workerNode))
		{
			return workerNode;
		}
	}

	if (!foundAnyNodes)
	{
		FUNC2(ERROR, (FUNC3("there is a shard placement in node group %d but "
							   "there are no nodes in that group", groupId)));
	}

	switch (ReadFromSecondaries)
	{
		case USE_SECONDARY_NODES_NEVER:
		{
			FUNC2(ERROR, (FUNC3("node group %d does not have a primary node",
								   groupId)));
			return NULL;
		}

		case USE_SECONDARY_NODES_ALWAYS:
		{
			FUNC2(ERROR, (FUNC3("node group %d does not have a secondary node",
								   groupId)));
			return NULL;
		}

		default:
		{
			FUNC2(FATAL, (FUNC3("unrecognized value for use_secondary_nodes")));
			return NULL;
		}
	}
}