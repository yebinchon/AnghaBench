#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int /*<<< orphan*/  workerName; int /*<<< orphan*/  nodeId; int /*<<< orphan*/  groupId; } ;
typedef  TYPE_1__ WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WORKERS_WITH_METADATA ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(char *nodeName, int32 nodePort)
{
	char *nodeDeleteCommand = NULL;
	WorkerNode *workerNode = FUNC3(nodeName, nodePort);

	if (FUNC6(workerNode))
	{
		bool onlyConsiderActivePlacements = false;

		/*
		 * Delete reference table placements so they are not taken into account
		 * for the check if there are placements after this
		 */
		FUNC1(workerNode->groupId);

		if (FUNC5(workerNode->groupId,
										onlyConsiderActivePlacements))
		{
			FUNC8(ERROR, (FUNC9("you cannot remove the primary node of a node group "
								   "which has shard placements")));
		}
	}

	FUNC2(workerNode->workerName, nodePort);

	nodeDeleteCommand = FUNC4(workerNode->nodeId);

	/* make sure we don't have any lingering session lifespan connections */
	FUNC0(workerNode->workerName, nodePort);

	FUNC7(WORKERS_WITH_METADATA, nodeDeleteCommand);
}