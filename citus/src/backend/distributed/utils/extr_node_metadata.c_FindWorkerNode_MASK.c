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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

WorkerNode *
FUNC6(char *nodeName, int32 nodePort)
{
	WorkerNode *cachedWorkerNode = NULL;
	HTAB *workerNodeHash = FUNC0();
	bool handleFound = false;
	void *hashKey = NULL;

	WorkerNode *searchedNode = (WorkerNode *) FUNC4(sizeof(WorkerNode));
	FUNC5(searchedNode->workerName, nodeName, WORKER_LENGTH);
	searchedNode->workerPort = nodePort;

	hashKey = (void *) searchedNode;
	cachedWorkerNode = (WorkerNode *) FUNC1(workerNodeHash, hashKey, HASH_FIND,
												  &handleFound);
	if (handleFound)
	{
		WorkerNode *workerNode = (WorkerNode *) FUNC3(sizeof(WorkerNode));
		FUNC2(workerNode, cachedWorkerNode, sizeof(WorkerNode));
		return workerNode;
	}

	return NULL;
}