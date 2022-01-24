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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC13(Oid relationId)
{
	DistTableCacheEntry *cacheEntry = FUNC0(relationId);

	List *shardIntervalList = NIL;
	List *commandList = NIL;
	List *foreignConstraintCommands = NIL;
	List *shardMetadataInsertCommandList = NIL;
	List *sequenceDDLCommands = NIL;
	List *tableDDLCommands = NIL;
	char *tableOwnerResetCommand = NULL;
	char *metadataCommand = NULL;
	char *truncateTriggerCreateCommand = NULL;
	bool includeSequenceDefaults = true;

	/* commands to create sequences */
	sequenceDDLCommands = FUNC7(relationId);
	commandList = FUNC12(commandList, sequenceDDLCommands);

	/* commands to create the table */
	tableDDLCommands = FUNC3(relationId, includeSequenceDefaults);
	commandList = FUNC12(commandList, tableDDLCommands);

	/* command to reset the table owner */
	tableOwnerResetCommand = FUNC9(relationId);
	commandList = FUNC11(commandList, tableOwnerResetCommand);

	/* command to insert pg_dist_partition entry */
	metadataCommand = FUNC1(cacheEntry);
	commandList = FUNC11(commandList, metadataCommand);

	/* commands to create the truncate trigger of the table */
	truncateTriggerCreateCommand = FUNC10(relationId);
	commandList = FUNC11(commandList, truncateTriggerCreateCommand);

	/* commands to insert pg_dist_shard & pg_dist_placement entries */
	shardIntervalList = FUNC5(relationId);
	shardMetadataInsertCommandList = FUNC8(shardIntervalList);
	commandList = FUNC12(commandList, shardMetadataInsertCommandList);

	/* commands to create foreign key constraints */
	foreignConstraintCommands = FUNC4(relationId);
	commandList = FUNC12(commandList, foreignConstraintCommands);

	/* commands to create partitioning hierarchy */
	if (FUNC6(relationId))
	{
		char *alterTableAttachPartitionCommands =
			FUNC2(relationId);
		commandList = FUNC11(commandList, alterTableAttachPartitionCommands);
	}

	return commandList;
}