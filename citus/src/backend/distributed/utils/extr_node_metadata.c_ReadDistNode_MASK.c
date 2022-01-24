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
struct TYPE_4__ {int /*<<< orphan*/  nodeCluster; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  CurrentCluster ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

List *
FUNC11(bool includeNodesFromOtherClusters)
{
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 0;
	HeapTuple heapTuple = NULL;
	List *workerNodeList = NIL;
	TupleDesc tupleDescriptor = NULL;

	Relation pgDistNode = FUNC5(FUNC0(), AccessShareLock);

	scanDescriptor = FUNC8(pgDistNode,
										InvalidOid, false,
										NULL, scanKeyCount, scanKey);

	tupleDescriptor = FUNC2(pgDistNode);

	heapTuple = FUNC10(scanDescriptor);
	while (FUNC1(heapTuple))
	{
		WorkerNode *workerNode = FUNC3(tupleDescriptor, heapTuple);

		if (includeNodesFromOtherClusters ||
			FUNC7(workerNode->nodeCluster, CurrentCluster, WORKER_LENGTH) == 0)
		{
			/* the coordinator acts as if it never sees nodes not in it's cluster */
			workerNodeList = FUNC6(workerNodeList, workerNode);
		}

		heapTuple = FUNC10(scanDescriptor);
	}

	FUNC9(scanDescriptor);
	FUNC4(pgDistNode, NoLock);

	return workerNodeList;
}