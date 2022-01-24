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
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  text ;
typedef  int int64 ;
typedef  int int32 ;
struct TYPE_3__ {scalar_t__ replicationModel; int /*<<< orphan*/  relationId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CompareWorkerNodes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int FUNC6 () ; 
 int HASH_TOKEN_COUNT ; 
 int INT32_MAX ; 
 int INT32_MIN ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ REPLICATION_MODEL_STREAMING ; 
 int /*<<< orphan*/  RowShareLock ; 
 char FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 

void
FUNC23(Oid distributedTableId, int32 shardCount,
								 int32 replicationFactor, bool useExclusiveConnections)
{
	char shardStorageType = 0;
	List *workerNodeList = NIL;
	int32 workerNodeCount = 0;
	uint32 placementAttemptCount = 0;
	uint64 hashTokenIncrement = 0;
	List *existingShardList = NIL;
	int64 shardIndex = 0;
	DistTableCacheEntry *cacheEntry = FUNC3(distributedTableId);
	bool colocatedShard = false;
	List *insertedShardPlacements = NIL;

	/* make sure table is hash partitioned */
	FUNC0(distributedTableId);

	/*
	 * In contrast to append/range partitioned tables it makes more sense to
	 * require ownership privileges - shards for hash-partitioned tables are
	 * only created once, not continually during ingest as for the other
	 * partitioning types.
	 */
	FUNC5(distributedTableId);

	/* we plan to add shards: get an exclusive lock on relation oid */
	FUNC11(distributedTableId, ExclusiveLock);

	/* validate that shards haven't already been created for this table */
	existingShardList = FUNC10(distributedTableId);
	if (existingShardList != NIL)
	{
		char *tableName = FUNC20(distributedTableId);
		FUNC15(ERROR, (FUNC16(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC19("table \"%s\" has already had shards created for it",
							   tableName)));
	}

	/* make sure that at least one shard is specified */
	if (shardCount <= 0)
	{
		FUNC15(ERROR, (FUNC16(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC19("shard_count must be positive")));
	}

	/* make sure that at least one replica is specified */
	if (replicationFactor <= 0)
	{
		FUNC15(ERROR, (FUNC16(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC19("replication_factor must be positive")));
	}

	/* make sure that RF=1 if the table is streaming replicated */
	if (cacheEntry->replicationModel == REPLICATION_MODEL_STREAMING &&
		replicationFactor > 1)
	{
		char *relationName = FUNC20(cacheEntry->relationId);
		FUNC15(ERROR, (FUNC16(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC19("using replication factor %d with the streaming "
							   "replication model is not supported",
							   replicationFactor),
						FUNC17("The table %s is marked as streaming replicated and "
								  "the shard replication factor of streaming replicated "
								  "tables must be 1.", relationName),
						FUNC18("Use replication factor 1.")));
	}

	/* calculate the split of the hash space */
	hashTokenIncrement = HASH_TOKEN_COUNT / shardCount;

	/* don't allow concurrent node list changes that require an exclusive lock */
	FUNC11(FUNC2(), RowShareLock);

	/* load and sort the worker node list for deterministic placement */
	workerNodeList = FUNC4(NoLock);
	workerNodeList = FUNC14(workerNodeList, CompareWorkerNodes);

	workerNodeCount = FUNC22(workerNodeList);
	if (replicationFactor > workerNodeCount)
	{
		FUNC15(ERROR, (FUNC16(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC19("replication_factor (%d) exceeds number of worker nodes "
							   "(%d)", replicationFactor, workerNodeCount),
						FUNC18("Add more worker nodes or try again with a lower "
								"replication factor.")));
	}

	/* if we have enough nodes, add an extra placement attempt for backup */
	placementAttemptCount = (uint32) replicationFactor;
	if (workerNodeCount > replicationFactor)
	{
		placementAttemptCount++;
	}

	/* set shard storage type according to relation type */
	shardStorageType = FUNC13(distributedTableId);

	for (shardIndex = 0; shardIndex < shardCount; shardIndex++)
	{
		uint32 roundRobinNodeIndex = shardIndex % workerNodeCount;

		/* initialize the hash token space for this shard */
		text *minHashTokenText = NULL;
		text *maxHashTokenText = NULL;
		int32 shardMinHashToken = INT32_MIN + (shardIndex * hashTokenIncrement);
		int32 shardMaxHashToken = shardMinHashToken + (hashTokenIncrement - 1);
		uint64 shardId = FUNC6();
		List *currentInsertedShardPlacements = NIL;

		/* if we are at the last shard, make sure the max token value is INT_MAX */
		if (shardIndex == (shardCount - 1))
		{
			shardMaxHashToken = INT32_MAX;
		}

		/* insert the shard metadata row along with its min/max values */
		minHashTokenText = FUNC9(shardMinHashToken);
		maxHashTokenText = FUNC9(shardMaxHashToken);

		/*
		 * Grabbing the shard metadata lock isn't technically necessary since
		 * we already hold an exclusive lock on the partition table, but we'll
		 * acquire it for the sake of completeness. As we're adding new active
		 * placements, the mode must be exclusive.
		 */
		FUNC12(shardId, ExclusiveLock);

		FUNC8(distributedTableId, shardId, shardStorageType,
					   minHashTokenText, maxHashTokenText);

		currentInsertedShardPlacements = FUNC7(distributedTableId,
																  shardId,
																  workerNodeList,
																  roundRobinNodeIndex,
																  replicationFactor);
		insertedShardPlacements = FUNC21(insertedShardPlacements,
											  currentInsertedShardPlacements);
	}

	FUNC1(distributedTableId, insertedShardPlacements,
						  useExclusiveConnections, colocatedShard);
}