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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_placement_groupid ; 
 int /*<<< orphan*/  Anum_pg_dist_placement_shardstate ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FILE_FINALIZED ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

bool
FUNC10(int32 groupId, bool onlyConsiderActivePlacements)
{
	const int scanKeyCount = (onlyConsiderActivePlacements ? 2 : 1);
	const bool indexOK = false;

	bool hasFinalizedPlacements = false;

	HeapTuple heapTuple = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[2];

	Relation pgPlacement = FUNC6(FUNC1(),
									 AccessShareLock);

	FUNC4(&scanKey[0], Anum_pg_dist_placement_groupid,
				BTEqualStrategyNumber, F_INT4EQ, FUNC3(groupId));
	if (onlyConsiderActivePlacements)
	{
		FUNC4(&scanKey[1], Anum_pg_dist_placement_shardstate,
					BTEqualStrategyNumber, F_INT4EQ, FUNC3(FILE_FINALIZED));
	}

	scanDescriptor = FUNC7(pgPlacement,
										FUNC0(), indexOK,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC9(scanDescriptor);
	hasFinalizedPlacements = FUNC2(heapTuple);

	FUNC8(scanDescriptor);
	FUNC5(pgPlacement, NoLock);

	return hasFinalizedPlacements;
}