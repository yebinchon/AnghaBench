#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  replace ;
struct TYPE_11__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; int /*<<< orphan*/  nodeId; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  Anum_pg_dist_node_isactive 129 
#define  Anum_pg_dist_node_shouldhaveshards 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Natts_pg_dist_node ; 
 int /*<<< orphan*/  NoLock ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  WORKERS_WITH_METADATA ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static WorkerNode *
FUNC17(WorkerNode *workerNode, int columnIndex, Datum value)
{
	Relation pgDistNode = FUNC15(FUNC4(), RowExclusiveLock);
	TupleDesc tupleDescriptor = FUNC7(pgDistNode);
	HeapTuple heapTuple = FUNC5(workerNode->workerName, workerNode->workerPort);
	WorkerNode *newWorkerNode = NULL;

	Datum values[Natts_pg_dist_node];
	bool isnull[Natts_pg_dist_node];
	bool replace[Natts_pg_dist_node];
	char *metadataSyncCommand = NULL;


	switch (columnIndex)
	{
		case Anum_pg_dist_node_isactive:
		{
			metadataSyncCommand = FUNC6(workerNode->nodeId,
														 FUNC3(value));
			break;
		}

		case Anum_pg_dist_node_shouldhaveshards:
		{
			metadataSyncCommand = FUNC9(workerNode->nodeId,
																FUNC3(value));
			break;
		}

		default:
		{
			FUNC11(ERROR, (FUNC12("could not find valid entry for node \"%s:%d\"",
								   workerNode->workerName, workerNode->workerPort)));
		}
	}

	if (heapTuple == NULL)
	{
		FUNC11(ERROR, (FUNC12("could not find valid entry for node \"%s:%d\"",
							   workerNode->workerName, workerNode->workerPort)));
	}

	FUNC16(replace, 0, sizeof(replace));
	values[columnIndex - 1] = value;
	isnull[columnIndex - 1] = false;
	replace[columnIndex - 1] = true;

	heapTuple = FUNC14(heapTuple, tupleDescriptor, values, isnull, replace);

	FUNC0(pgDistNode, &heapTuple->t_self, heapTuple);

	FUNC1(FUNC4());
	FUNC2();

	newWorkerNode = FUNC10(tupleDescriptor, heapTuple);

	FUNC13(pgDistNode, NoLock);

	/* we also update the column at worker nodes */
	FUNC8(WORKERS_WITH_METADATA, metadataSyncCommand);
	return newWorkerNode;
}