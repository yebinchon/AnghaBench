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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  CompareWorkerNodes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INVALID_SHARD_ID ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 char FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(Oid distributedTableId)
{
	char shardStorageType = 0;
	List *nodeList = NIL;
	List *existingShardList = NIL;
	uint64 shardId = INVALID_SHARD_ID;
	int workerStartIndex = 0;
	int replicationFactor = 0;
	text *shardMinValue = NULL;
	text *shardMaxValue = NULL;
	bool useExclusiveConnection = false;
	bool colocatedShard = false;
	List *insertedShardPlacements = NIL;

	/*
	 * In contrast to append/range partitioned tables it makes more sense to
	 * require ownership privileges - shards for reference tables are
	 * only created once, not continually during ingest as for the other
	 * partitioning types such as append and range.
	 */
	FUNC1(distributedTableId);

	/* we plan to add shards: get an exclusive lock on relation oid */
	FUNC6(distributedTableId, ExclusiveLock);

	/* set shard storage type according to relation type */
	shardStorageType = FUNC10(distributedTableId);

	/* validate that shards haven't already been created for this table */
	existingShardList = FUNC5(distributedTableId);
	if (existingShardList != NIL)
	{
		char *tableName = FUNC15(distributedTableId);
		FUNC12(ERROR, (FUNC13(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC14("table \"%s\" has already had shards created for it",
							   tableName)));
	}

	/*
	 * load and sort the worker node list for deterministic placements
	 * create_reference_table has already acquired pg_dist_node lock
	 */
	nodeList = FUNC8(ShareLock);
	nodeList = FUNC11(nodeList, CompareWorkerNodes);

	replicationFactor = FUNC9();

	/* get the next shard id */
	shardId = FUNC2();

	/*
	 * Grabbing the shard metadata lock isn't technically necessary since
	 * we already hold an exclusive lock on the partition table, but we'll
	 * acquire it for the sake of completeness. As we're adding new active
	 * placements, the mode must be exclusive.
	 */
	FUNC7(shardId, ExclusiveLock);

	FUNC4(distributedTableId, shardId, shardStorageType, shardMinValue,
				   shardMaxValue);

	insertedShardPlacements = FUNC3(distributedTableId, shardId,
													   nodeList, workerStartIndex,
													   replicationFactor);

	FUNC0(distributedTableId, insertedShardPlacements,
						  useExclusiveConnection, colocatedShard);
}