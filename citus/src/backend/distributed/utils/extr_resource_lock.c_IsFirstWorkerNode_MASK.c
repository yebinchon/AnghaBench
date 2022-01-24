#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ groupId; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CompareWorkerNodes ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5()
{
	List *workerNodeList = FUNC0(NoLock);
	WorkerNode *firstWorkerNode = NULL;

	workerNodeList = FUNC2(workerNodeList, CompareWorkerNodes);

	if (FUNC4(workerNodeList) == 0)
	{
		return false;
	}

	firstWorkerNode = (WorkerNode *) FUNC3(workerNodeList);

	if (firstWorkerNode->groupId == FUNC1())
	{
		return true;
	}

	return false;
}