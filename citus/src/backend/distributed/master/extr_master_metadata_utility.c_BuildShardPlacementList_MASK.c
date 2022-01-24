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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {int /*<<< orphan*/  shardId; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  GroupShardPlacement ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_placement_shardid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  F_INT8EQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

List *
FUNC13(ShardInterval *shardInterval)
{
	int64 shardId = shardInterval->shardId;
	List *shardPlacementList = NIL;
	Relation pgPlacement = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	bool indexOK = true;
	HeapTuple heapTuple = NULL;

	pgPlacement = FUNC8(FUNC0(), AccessShareLock);

	FUNC5(&scanKey[0], Anum_pg_dist_placement_shardid,
				BTEqualStrategyNumber, F_INT8EQ, FUNC3(shardId));

	scanDescriptor = FUNC10(pgPlacement,
										FUNC1(), indexOK,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC12(scanDescriptor);
	while (FUNC2(heapTuple))
	{
		TupleDesc tupleDescriptor = FUNC4(pgPlacement);

		GroupShardPlacement *placement =
			FUNC6(tupleDescriptor, heapTuple);

		shardPlacementList = FUNC9(shardPlacementList, placement);

		heapTuple = FUNC12(scanDescriptor);
	}

	FUNC11(scanDescriptor);
	FUNC7(pgPlacement, NoLock);

	return shardPlacementList;
}