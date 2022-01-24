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
typedef  int /*<<< orphan*/  isNullArray ;
struct TYPE_3__ {int /*<<< orphan*/  nodeCluster; void* shouldHaveShards; int /*<<< orphan*/  nodeRole; void* isActive; void* metadataSynced; void* hasMetadata; int /*<<< orphan*/  workerRack; int /*<<< orphan*/  workerName; int /*<<< orphan*/  groupId; void* workerPort; void* nodeId; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/ * Name ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_dist_node_groupid ; 
 int Anum_pg_dist_node_hasmetadata ; 
 int Anum_pg_dist_node_isactive ; 
 int Anum_pg_dist_node_metadatasynced ; 
 int Anum_pg_dist_node_nodecluster ; 
 int Anum_pg_dist_node_nodeid ; 
 int Anum_pg_dist_node_nodename ; 
 int Anum_pg_dist_node_nodeport ; 
 int Anum_pg_dist_node_noderack ; 
 int Anum_pg_dist_node_noderole ; 
 int Anum_pg_dist_node_shouldhaveshards ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int Natts_pg_dist_node ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int,int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WorkerNode *
FUNC14(TupleDesc tupleDescriptor, HeapTuple heapTuple)
{
	WorkerNode *workerNode = NULL;
	Datum datumArray[Natts_pg_dist_node];
	bool isNullArray[Natts_pg_dist_node];
	char *nodeName = NULL;
	char *nodeRack = NULL;

	FUNC0(!FUNC7(heapTuple));

	/*
	 * This function can be called before "ALTER TABLE ... ADD COLUMN nodecluster ...",
	 * therefore heap_deform_tuple() won't set the isNullArray for this column. We
	 * initialize it true to be safe in that case.
	 */
	FUNC11(isNullArray, true, sizeof(isNullArray));

	/*
	 * We use heap_deform_tuple() instead of heap_getattr() to expand tuple
	 * to contain missing values when ALTER TABLE ADD COLUMN happens.
	 */
	FUNC10(heapTuple, tupleDescriptor, datumArray, isNullArray);

	nodeName = FUNC2(datumArray[Anum_pg_dist_node_nodename - 1]);
	nodeRack = FUNC2(datumArray[Anum_pg_dist_node_noderack - 1]);

	workerNode = (WorkerNode *) FUNC12(sizeof(WorkerNode));
	workerNode->nodeId = FUNC6(datumArray[Anum_pg_dist_node_nodeid - 1]);
	workerNode->workerPort = FUNC6(datumArray[Anum_pg_dist_node_nodeport - 1]);
	workerNode->groupId = FUNC3(datumArray[Anum_pg_dist_node_groupid - 1]);
	FUNC13(workerNode->workerName, FUNC9(nodeName), WORKER_LENGTH);
	FUNC13(workerNode->workerRack, FUNC9(nodeRack), WORKER_LENGTH);
	workerNode->hasMetadata = FUNC1(datumArray[Anum_pg_dist_node_hasmetadata - 1]);
	workerNode->metadataSynced =
		FUNC1(datumArray[Anum_pg_dist_node_metadatasynced - 1]);
	workerNode->isActive = FUNC1(datumArray[Anum_pg_dist_node_isactive - 1]);
	workerNode->nodeRole = FUNC5(datumArray[Anum_pg_dist_node_noderole - 1]);
	workerNode->shouldHaveShards = FUNC1(
		datumArray[Anum_pg_dist_node_shouldhaveshards -
				   1]);

	/*
	 * nodecluster column can be missing. In the case of extension creation/upgrade,
	 * master_initialize_node_metadata function is called before the nodecluster
	 * column is added to pg_dist_node table.
	 */
	if (!isNullArray[Anum_pg_dist_node_nodecluster - 1])
	{
		Name nodeClusterName =
			FUNC4(datumArray[Anum_pg_dist_node_nodecluster - 1]);
		char *nodeClusterString = FUNC8(*nodeClusterName);
		FUNC13(workerNode->nodeCluster, nodeClusterString, NAMEDATALEN);
	}

	return workerNode;
}