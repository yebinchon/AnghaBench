#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int nodeId; } ;
typedef  TYPE_1__ WorkerNode ;
struct TYPE_9__ {scalar_t__ groupId; int shouldHaveShards; int hasMetadata; scalar_t__ nodeRole; int /*<<< orphan*/  nodeCluster; } ;
typedef  TYPE_2__ NodeMetadata ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ COORDINATOR_GROUP_ID ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ INVALID_GROUP_ID ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WORKERS_WITH_METADATA ; 
 int /*<<< orphan*/  WORKER_DEFAULT_CLUSTER ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(char *nodeName, int32 nodePort,
				NodeMetadata *nodeMetadata,
				bool *nodeAlreadyExists)
{
	int nextNodeIdInt = 0;
	WorkerNode *workerNode = NULL;
	char *nodeDeleteCommand = NULL;
	uint32 primariesWithMetadata = 0;

	FUNC2();

	*nodeAlreadyExists = false;

	/*
	 * Take an exclusive lock on pg_dist_node to serialize node changes.
	 * We may want to relax or have more fine-grained locking in the future
	 * to allow users to add multiple nodes concurrently.
	 */
	FUNC7(FUNC1(), ExclusiveLock);

	workerNode = FUNC3(nodeName, nodePort);
	if (workerNode != NULL)
	{
		/* fill return data and return */
		*nodeAlreadyExists = true;

		return workerNode->nodeId;
	}

	/* user lets Citus to decide on the group that the newly added node should be in */
	if (nodeMetadata->groupId == INVALID_GROUP_ID)
	{
		nodeMetadata->groupId = FUNC4();
	}

	/* if this is a coordinator, we shouldn't place shards on it */
	if (nodeMetadata->groupId == COORDINATOR_GROUP_ID)
	{
		nodeMetadata->shouldHaveShards = false;
		nodeMetadata->hasMetadata = true;
	}

	/* if nodeRole hasn't been added yet there's a constraint for one-node-per-group */
	if (nodeMetadata->nodeRole != InvalidOid && nodeMetadata->nodeRole ==
		FUNC11())
	{
		WorkerNode *existingPrimaryNode = FUNC10(nodeMetadata->groupId,
															  NULL);

		if (existingPrimaryNode != NULL)
		{
			FUNC13(ERROR, (FUNC14("group %d already has a primary node",
								   nodeMetadata->groupId)));
		}
	}

	if (nodeMetadata->nodeRole == FUNC11())
	{
		if (FUNC16(nodeMetadata->nodeCluster,
					WORKER_DEFAULT_CLUSTER,
					WORKER_LENGTH) != 0)
		{
			FUNC13(ERROR, (FUNC14("primaries must be added to the default cluster")));
		}
	}

	/* generate the new node id from the sequence */
	nextNodeIdInt = FUNC5();

	FUNC6(nextNodeIdInt, nodeName, nodePort, nodeMetadata);

	workerNode = FUNC3(nodeName, nodePort);

	/* send the delete command to all primary nodes with metadata */
	nodeDeleteCommand = FUNC8(workerNode->nodeId);
	FUNC12(WORKERS_WITH_METADATA, nodeDeleteCommand);

	/* finally prepare the insert command and send it to all primary nodes */
	primariesWithMetadata = FUNC0();
	if (primariesWithMetadata != 0)
	{
		List *workerNodeList = FUNC15(workerNode);
		char *nodeInsertCommand = FUNC9(workerNodeList);

		FUNC12(WORKERS_WITH_METADATA, nodeInsertCommand);
	}

	return workerNode->nodeId;
}