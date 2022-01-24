#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; int /*<<< orphan*/  isActive; } ;
typedef  TYPE_1__ WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 TYPE_1__* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NOTICE ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 char* FUNC17 (char*) ; 

void
FUNC18(char *nodeNameString, int32 nodePort)
{
	WorkerNode *workerNode = NULL;
	char *escapedNodeName = FUNC17(nodeNameString);

	/* fail if metadata synchronization doesn't succeed */
	bool raiseInterrupts = true;

	FUNC2();
	FUNC4();
	FUNC3();
	FUNC0(ERROR);

	FUNC11(true, "start_metadata_sync_to_node");

	FUNC6(FUNC1(), ExclusiveLock);

	workerNode = FUNC5(nodeNameString, nodePort);
	if (workerNode == NULL)
	{
		FUNC13(ERROR, (FUNC14(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC16("you cannot sync metadata to a non-existent node"),
						FUNC15("First, add the node with SELECT master_add_node"
								"(%s,%d)", escapedNodeName, nodePort)));
	}

	if (!workerNode->isActive)
	{
		FUNC13(ERROR, (FUNC14(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC16("you cannot sync metadata to an inactive node"),
						FUNC15("First, activate the node with "
								"SELECT master_activate_node(%s,%d)",
								escapedNodeName, nodePort)));
	}

	if (FUNC9(workerNode))
	{
		FUNC13(NOTICE, (FUNC16("%s:%d is the coordinator and already contains "
								"metadata, skipping syncing the metadata",
								nodeNameString, nodePort)));
		return;
	}

	FUNC7(nodeNameString, nodePort, true);

	if (!FUNC10(workerNode))
	{
		/*
		 * If this is a secondary node we can't actually sync metadata to it; we assume
		 * the primary node is receiving metadata.
		 */
		return;
	}

	FUNC12(workerNode, raiseInterrupts);
	FUNC8(workerNode->workerName, workerNode->workerPort, true);
}