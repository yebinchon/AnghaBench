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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  isNulls ;
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_3__ {scalar_t__ workerPort; int /*<<< orphan*/  workerName; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int WORKER_NODE_FIELDS ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

__attribute__((used)) static Datum
FUNC5(WorkerNode *workerNode, TupleDesc tupleDescriptor)
{
	Datum values[WORKER_NODE_FIELDS];
	bool isNulls[WORKER_NODE_FIELDS];
	HeapTuple workerNodeTuple = NULL;
	Datum workerNodeDatum = 0;

	FUNC4(values, 0, sizeof(values));
	FUNC4(isNulls, false, sizeof(isNulls));

	values[0] = FUNC0(workerNode->workerName);
	values[1] = FUNC2((int64) workerNode->workerPort);

	workerNodeTuple = FUNC3(tupleDescriptor, values, isNulls);
	workerNodeDatum = FUNC1(workerNodeTuple);

	return workerNodeDatum;
}