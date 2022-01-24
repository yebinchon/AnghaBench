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
struct TYPE_4__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; } ;
typedef  TYPE_1__ WorkerNode ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(WorkerNode *newWorkerNode)
{
	if (FUNC3(newWorkerNode))
	{
		FUNC1();
		FUNC4(newWorkerNode->workerName,
									   newWorkerNode->workerPort);
		FUNC5(newWorkerNode->workerName,
										  newWorkerNode->workerPort);

		/*
		 * Let the maintenance daemon do the hard work of syncing the metadata.
		 * We prefer this because otherwise node activation might fail within
		 * transaction blocks.
		 */
		if (FUNC0())
		{
			FUNC2(newWorkerNode->workerName, newWorkerNode->workerPort,
								true);
			FUNC6(MyDatabaseId);
		}
	}
}