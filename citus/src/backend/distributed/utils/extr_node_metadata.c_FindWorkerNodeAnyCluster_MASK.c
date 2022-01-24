#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  WorkerNode ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

WorkerNode *
FUNC6(const char *nodeName, int32 nodePort)
{
	WorkerNode *workerNode = NULL;

	Relation pgDistNode = FUNC5(FUNC0(), AccessShareLock);
	TupleDesc tupleDescriptor = FUNC2(pgDistNode);

	HeapTuple heapTuple = FUNC1(nodeName, nodePort);
	if (heapTuple != NULL)
	{
		workerNode = FUNC3(tupleDescriptor, heapTuple);
	}

	FUNC4(pgDistNode, NoLock);
	return workerNode;
}