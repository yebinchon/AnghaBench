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
struct TYPE_3__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; int /*<<< orphan*/  groupId; } ;
typedef  TYPE_1__ WorkerNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 char* FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 

__attribute__((used)) static bool
FUNC8(WorkerNode *workerNode, bool raiseOnError)
{
	char *extensionOwner = FUNC0();

	/* generate and add the local group id's update query */
	char *localGroupIdUpdateCommand = FUNC1(workerNode->groupId);

	/* generate the queries which drop the metadata */
	List *dropMetadataCommandList = FUNC3();

	/* generate the queries which create the metadata from scratch */
	List *createMetadataCommandList = FUNC2();

	List *recreateMetadataSnapshotCommandList = FUNC7(localGroupIdUpdateCommand);
	recreateMetadataSnapshotCommandList = FUNC6(recreateMetadataSnapshotCommandList,
													  dropMetadataCommandList);
	recreateMetadataSnapshotCommandList = FUNC6(recreateMetadataSnapshotCommandList,
													  createMetadataCommandList);

	/*
	 * Send the snapshot recreation commands in a single remote transaction and
	 * if requested, error out in any kind of failure. Note that it is not
	 * required to send createMetadataSnapshotCommandList in the same transaction
	 * that we send nodeDeleteCommand and nodeInsertCommand commands below.
	 */
	if (raiseOnError)
	{
		FUNC4(workerNode->workerName,
												   workerNode->workerPort,
												   extensionOwner,
												   recreateMetadataSnapshotCommandList);
		return true;
	}
	else
	{
		bool success =
			FUNC5(workerNode->workerName,
														 workerNode->workerPort,
														 extensionOwner,
														 recreateMetadataSnapshotCommandList);
		return success;
	}
}