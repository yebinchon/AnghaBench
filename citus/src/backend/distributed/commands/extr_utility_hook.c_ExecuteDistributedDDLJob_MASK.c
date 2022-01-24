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
struct TYPE_3__ {scalar_t__ targetRelationId; scalar_t__ commandString; int /*<<< orphan*/  taskList; int /*<<< orphan*/  concurrentIndexCmd; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DDLJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMMIT_PROTOCOL_BARE ; 
 char* DISABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ MultiShardCommitProtocol ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ SavedMultiShardCommitProtocol ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC9 () ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  WORKERS_WITH_METADATA ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17(DDLJob *ddlJob)
{
	bool shouldSyncMetadata = false;

	FUNC1();

	if (ddlJob->targetRelationId != InvalidOid)
	{
		/*
		 * Only for ddlJobs that are targetting a relation (table) we want to sync its
		 * metadata and verify some properties around the table.
		 */
		shouldSyncMetadata = FUNC10(ddlJob->targetRelationId);
		FUNC2(ddlJob->targetRelationId);
	}


	if (!ddlJob->concurrentIndexCmd)
	{
		if (shouldSyncMetadata)
		{
			char *setSearchPathCommand = FUNC9();

			FUNC8(WORKERS_WITH_METADATA, DISABLE_DDL_PROPAGATION);

			/*
			 * Given that we're relaying the query to the worker nodes directly,
			 * we should set the search path exactly the same when necessary.
			 */
			if (setSearchPathCommand != NULL)
			{
				FUNC8(WORKERS_WITH_METADATA, setSearchPathCommand);
			}

			FUNC8(WORKERS_WITH_METADATA, (char *) ddlJob->commandString);
		}

		/* use adaptive executor when enabled */
		FUNC3(ddlJob->taskList);
	}
	else
	{
		/* save old commit protocol to restore at xact end */
		FUNC0(SavedMultiShardCommitProtocol == COMMIT_PROTOCOL_BARE);
		SavedMultiShardCommitProtocol = MultiShardCommitProtocol;
		MultiShardCommitProtocol = COMMIT_PROTOCOL_BARE;

		FUNC6();
		{
			/* use adaptive executor when enabled */
			FUNC3(ddlJob->taskList);

			if (shouldSyncMetadata)
			{
				List *commandList = FUNC16(DISABLE_DDL_PROPAGATION);
				char *setSearchPathCommand = FUNC9();

				/*
				 * Given that we're relaying the query to the worker nodes directly,
				 * we should set the search path exactly the same when necessary.
				 */
				if (setSearchPathCommand != NULL)
				{
					commandList = FUNC15(commandList, setSearchPathCommand);
				}

				commandList = FUNC15(commandList, (char *) ddlJob->commandString);

				FUNC7(WORKERS_WITH_METADATA, commandList);
			}
		}
		FUNC4();
		{
			FUNC11(ERROR,
					(FUNC14("CONCURRENTLY-enabled index command failed"),
					 FUNC12("CONCURRENTLY-enabled index commands can fail partially, "
							   "leaving behind an INVALID index."),
					 FUNC13("Use DROP INDEX CONCURRENTLY IF EXISTS to remove the "
							 "invalid index, then retry the original command.")));
		}
		FUNC5();
	}
}