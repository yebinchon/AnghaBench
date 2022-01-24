#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int /*<<< orphan*/  relationId; int /*<<< orphan*/  shardId; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WORKER_APPEND_TABLE_TO_SHARD ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

List *
FUNC9(ShardInterval *shardInterval, char *sourceNodeName,
					 int32 sourceNodePort, bool includeDataCopy)
{
	int64 shardId = shardInterval->shardId;
	char *shardName = FUNC0(shardInterval);
	List *tableRecreationCommandList = NIL;
	List *indexCommandList = NIL;
	List *copyShardToNodeCommandsList = NIL;
	StringInfo copyShardDataCommand = FUNC7();
	Oid relationId = shardInterval->relationId;

	tableRecreationCommandList = FUNC2(relationId);
	tableRecreationCommandList =
		FUNC3(tableRecreationCommandList, shardId);

	copyShardToNodeCommandsList = FUNC6(copyShardToNodeCommandsList,
											  tableRecreationCommandList);

	/*
	 * The caller doesn't want to include the COPY command, perhaps using
	 * logical replication to copy the data.
	 */
	if (includeDataCopy)
	{
		FUNC4(copyShardDataCommand, WORKER_APPEND_TABLE_TO_SHARD,
						 FUNC8(shardName), /* table to append */
						 FUNC8(shardName), /* remote table name */
						 FUNC8(sourceNodeName), /* remote host */
						 sourceNodePort); /* remote port */

		copyShardToNodeCommandsList = FUNC5(copyShardToNodeCommandsList,
											  copyShardDataCommand->data);
	}

	indexCommandList = FUNC1(relationId);
	indexCommandList = FUNC3(indexCommandList, shardId);

	copyShardToNodeCommandsList = FUNC6(copyShardToNodeCommandsList,
											  indexCommandList);

	return copyShardToNodeCommandsList;
}