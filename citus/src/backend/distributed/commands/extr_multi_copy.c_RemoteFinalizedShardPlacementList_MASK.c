#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {char* nodeName; int nodeId; int /*<<< orphan*/  nodePort; int /*<<< orphan*/  placementId; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ ShardPlacement ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FINALIZED_SHARD_PLACEMENTS_QUERY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC14 () ; 
 int /*<<< orphan*/  masterConnection ; 
 scalar_t__ FUNC15 (int) ; 
 char* FUNC16 (char*) ; 

__attribute__((used)) static List *
FUNC17(uint64 shardId)
{
	List *finalizedPlacementList = NIL;
	PGresult *queryResult = NULL;
	bool raiseInterrupts = true;

	StringInfo shardPlacementsCommand = FUNC14();
	FUNC8(shardPlacementsCommand, FINALIZED_SHARD_PLACEMENTS_QUERY, shardId);

	if (!FUNC7(masterConnection, shardPlacementsCommand->data))
	{
		FUNC6(masterConnection, ERROR);
	}
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	if (FUNC5(queryResult) == PGRES_TUPLES_OK)
	{
		int rowCount = FUNC4(queryResult);
		int rowIndex = 0;

		for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
		{
			char *placementIdString = FUNC3(queryResult, rowIndex, 0);
			char *nodeName = FUNC16(FUNC3(queryResult, rowIndex, 1));
			char *nodePortString = FUNC16(FUNC3(queryResult, rowIndex, 2));
			uint32 nodePort = FUNC9(nodePortString);
			uint64 placementId = FUNC10(placementIdString);

			ShardPlacement *shardPlacement =
				(ShardPlacement *) FUNC15(sizeof(ShardPlacement));

			shardPlacement->placementId = placementId;
			shardPlacement->nodeName = nodeName;
			shardPlacement->nodePort = nodePort;

			/*
			 * We cannot know the nodeId, but it is not necessary at this point either.
			 * This is only used to to look up the connection for a group of co-located
			 * placements, but append-distributed tables are never co-located.
			 */
			shardPlacement->nodeId = -1;

			finalizedPlacementList = FUNC13(finalizedPlacementList, shardPlacement);
		}
	}
	else
	{
		FUNC11(ERROR, (FUNC12("could not get shard placements from the master node")));
	}

	FUNC2(queryResult);
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	FUNC0(!queryResult);

	return finalizedPlacementList;
}