#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_14__ {int /*<<< orphan*/  relationId; } ;
struct TYPE_13__ {int /*<<< orphan*/  placementId; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ ShardPlacement ;
typedef  TYPE_3__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 char* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FILE_FINALIZED ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 char RELKIND_FOREIGN_TABLE ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WORKER_APPEND_TABLE_TO_SHARD ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 char FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 

__attribute__((used)) static void
FUNC29(int64 shardId, char *sourceNodeName, int32 sourceNodePort,
					 char *targetNodeName, int32 targetNodePort)
{
	ShardInterval *shardInterval = FUNC8(shardId);
	Oid distributedTableId = shardInterval->relationId;

	char relationKind = FUNC24(distributedTableId);
	char *tableOwner = FUNC16(shardInterval->relationId);
	bool missingOk = false;
	bool includeData = false;
	bool partitionedTable = false;

	List *ddlCommandList = NIL;
	List *foreignConstraintCommandList = NIL;
	List *placementList = NIL;
	ShardPlacement *placement = NULL;

	/* prevent table from being dropped */
	FUNC10(distributedTableId, AccessShareLock);

	FUNC7(distributedTableId);

	if (relationKind == RELKIND_FOREIGN_TABLE)
	{
		char *relationName = FUNC23(distributedTableId);
		FUNC19(ERROR, (FUNC20(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC22("cannot repair shard"),
						FUNC21("Table %s is a foreign table. Repairing "
								  "shards backed by foreign tables is "
								  "not supported.", relationName)));
	}

	/*
	 * Let's not allow repairing partitions to prevent any edge cases.
	 * We're already not allowing any kind of modifications on the partitions
	 * so their placements are not likely to to be marked as INVALID. The only
	 * possible case to mark placement of a partition as invalid is
	 * "ALTER TABLE parent_table DETACH PARTITION partition_table". But,
	 * given that the table would become a regular distributed table if the
	 * command succeeds, we're OK since the regular distributed tables can
	 * be repaired later on.
	 */
	FUNC5(distributedTableId);

	/*
	 * We take a lock on the referenced table if there is a foreign constraint
	 * during the copy procedure. If we do not block DMLs on the referenced
	 * table, we cannot avoid the inconsistency between the two copies of the
	 * data. Currently, we do not support replication factor > 1 on the tables
	 * with foreign constraints, so this command will fail for this case anyway.
	 * However, it is taken as a precaution in case we support it one day.
	 */
	FUNC9(shardId, ExclusiveLock);

	/*
	 * We plan to move the placement to the healthy state, so we need to grab a shard
	 * metadata lock (in exclusive mode).
	 */
	FUNC11(shardId, ExclusiveLock);

	/*
	 * For shard repair, there should be healthy placement in source node and unhealthy
	 * placement in the target node.
	 */
	FUNC6(shardId, sourceNodeName, sourceNodePort, targetNodeName,
							 targetNodePort);

	/*
	 * If the shard belongs to a partitioned table, we need to load the data after
	 * creating the partitions and the partitioning hierarcy.
	 */
	partitionedTable = FUNC12(distributedTableId);
	includeData = !partitionedTable;

	/* we generate necessary commands to recreate the shard in target node */
	ddlCommandList =
		FUNC2(shardInterval, sourceNodeName, sourceNodePort, includeData);
	foreignConstraintCommandList = FUNC3(shardInterval);
	ddlCommandList = FUNC26(ddlCommandList, foreignConstraintCommandList);

	/*
	 * CopyShardCommandList() drops the table which cascades to partitions if the
	 * table is a partitioned table. This means that we need to create both parent
	 * table and its partitions.
	 *
	 * We also skipped copying the data, so include it here.
	 */
	if (partitionedTable)
	{
		List *partitionCommandList = NIL;

		char *shardName = FUNC0(shardInterval);
		StringInfo copyShardDataCommand = FUNC27();

		partitionCommandList =
			FUNC1(shardInterval, sourceNodeName, sourceNodePort);
		ddlCommandList = FUNC26(ddlCommandList, partitionCommandList);

		/* finally copy the data as well */
		FUNC18(copyShardDataCommand, WORKER_APPEND_TABLE_TO_SHARD,
						 FUNC28(shardName), /* table to append */
						 FUNC28(shardName), /* remote table name */
						 FUNC28(sourceNodeName), /* remote host */
						 sourceNodePort); /* remote port */
		ddlCommandList = FUNC25(ddlCommandList, copyShardDataCommand->data);
	}

	FUNC4();
	FUNC14(targetNodeName, targetNodePort, tableOwner,
											   ddlCommandList);

	/* after successful repair, we update shard state as healthy*/
	placementList = FUNC15(shardId);
	placement = FUNC13(placementList, targetNodeName, targetNodePort,
										   missingOk);
	FUNC17(placement->placementId, FILE_FINALIZED);
}