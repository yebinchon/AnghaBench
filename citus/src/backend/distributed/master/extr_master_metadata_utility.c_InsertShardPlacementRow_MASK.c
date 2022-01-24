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
typedef  int /*<<< orphan*/  values ;
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  isNulls ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_placement_groupid ; 
 int Anum_pg_dist_placement_placementid ; 
 int Anum_pg_dist_placement_shardid ; 
 int Anum_pg_dist_placement_shardlength ; 
 int Anum_pg_dist_placement_shardstate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ INVALID_PLACEMENT_ID ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int Natts_pg_dist_placement ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,int,int) ; 

uint64
FUNC13(uint64 shardId, uint64 placementId,
						char shardState, uint64 shardLength,
						int32 groupId)
{
	Relation pgDistPlacement = NULL;
	TupleDesc tupleDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_placement];
	bool isNulls[Natts_pg_dist_placement];

	/* form new shard placement tuple */
	FUNC12(values, 0, sizeof(values));
	FUNC12(isNulls, false, sizeof(isNulls));

	if (placementId == INVALID_PLACEMENT_ID)
	{
		placementId = FUNC11(NULL);
	}
	values[Anum_pg_dist_placement_placementid - 1] = FUNC6(placementId);
	values[Anum_pg_dist_placement_shardid - 1] = FUNC6(shardId);
	values[Anum_pg_dist_placement_shardstate - 1] = FUNC1(shardState);
	values[Anum_pg_dist_placement_shardlength - 1] = FUNC6(shardLength);
	values[Anum_pg_dist_placement_groupid - 1] = FUNC5(groupId);

	/* open shard placement relation and insert new tuple */
	pgDistPlacement = FUNC10(FUNC4(), RowExclusiveLock);

	tupleDescriptor = FUNC7(pgDistPlacement);
	heapTuple = FUNC9(tupleDescriptor, values, isNulls);

	FUNC0(pgDistPlacement, heapTuple);

	FUNC2(shardId);

	FUNC3();
	FUNC8(pgDistPlacement, NoLock);

	return placementId;
}