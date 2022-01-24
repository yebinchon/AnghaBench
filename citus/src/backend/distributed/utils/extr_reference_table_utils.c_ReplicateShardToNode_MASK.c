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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int /*<<< orphan*/  relationId; int /*<<< orphan*/  shardId; } ;
struct TYPE_7__ {char* nodeName; scalar_t__ shardState; int /*<<< orphan*/  placementId; int /*<<< orphan*/  groupId; int /*<<< orphan*/  nodePort; } ;
typedef  TYPE_1__ ShardPlacement ;
typedef  TYPE_2__ ShardInterval ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FILE_FINALIZED ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WORKERS_WITH_METADATA ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(ShardInterval *shardInterval, char *nodeName, int nodePort)
{
	uint64 shardId = shardInterval->shardId;

	bool missingOk = false;
	ShardPlacement *sourceShardPlacement = FUNC2(shardId, missingOk);
	char *srcNodeName = sourceShardPlacement->nodeName;
	uint32 srcNodePort = sourceShardPlacement->nodePort;
	bool includeData = true;
	List *ddlCommandList =
		FUNC0(shardInterval, srcNodeName, srcNodePort, includeData);

	List *shardPlacementList = FUNC10(shardId);
	bool missingWorkerOk = true;
	ShardPlacement *targetPlacement = FUNC7(shardPlacementList,
																 nodeName, nodePort,
																 missingWorkerOk);
	char *tableOwner = FUNC12(shardInterval->relationId);

	/*
	 * Although this function is used for reference tables and reference table shard
	 * placements always have shardState = FILE_FINALIZED, in case of an upgrade of
	 * a non-reference table to reference table, unhealty placements may exist. In
	 * this case, we repair the shard placement and update its state in
	 * pg_dist_placement table.
	 */
	if (targetPlacement == NULL || targetPlacement->shardState != FILE_FINALIZED)
	{
		uint64 placementId = 0;
		int32 groupId = 0;

		FUNC14(NOTICE, (FUNC15("Replicating reference table \"%s\" to the node %s:%d",
								FUNC16(shardInterval->relationId), nodeName,
								nodePort)));

		FUNC1();
		FUNC8(nodeName, nodePort, tableOwner,
												   ddlCommandList);
		if (targetPlacement == NULL)
		{
			groupId = FUNC4(nodeName, nodePort);

			placementId = FUNC3();
			FUNC5(shardId, placementId, FILE_FINALIZED, 0, groupId);
		}
		else
		{
			groupId = targetPlacement->groupId;
			placementId = targetPlacement->placementId;
			FUNC13(placementId, FILE_FINALIZED);
		}

		/*
		 * Although ReplicateShardToAllNodes is used only for reference tables,
		 * during the upgrade phase, the placements are created before the table is
		 * marked as a reference table. All metadata (including the placement
		 * metadata) will be copied to workers after all reference table changed
		 * are finished.
		 */
		if (FUNC11(shardInterval->relationId))
		{
			char *placementCommand = FUNC6(shardId, placementId,
															FILE_FINALIZED, 0,
															groupId);

			FUNC9(WORKERS_WITH_METADATA, placementCommand);
		}
	}
}