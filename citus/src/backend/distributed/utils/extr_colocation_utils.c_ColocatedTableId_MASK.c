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
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_partition_colocationid ; 
 int /*<<< orphan*/  Anum_pg_dist_partition_logicalrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_COLOCATION_ID ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 

Oid
FUNC16(Oid colocationId)
{
	Oid colocatedTableId = InvalidOid;
	Relation pgDistPartition = NULL;
	TupleDesc tupleDescriptor = NULL;
	SysScanDesc scanDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	bool indexOK = true;
	bool isNull = false;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;

	/*
	 * We may have a distributed table whose colocation id is INVALID_COLOCATION_ID.
	 * In this case, we do not want to send that table's id as colocated table id.
	 */
	if (colocationId == INVALID_COLOCATION_ID)
	{
		return colocatedTableId;
	}

	FUNC9(&scanKey[0], Anum_pg_dist_partition_colocationid,
				BTEqualStrategyNumber, F_INT4EQ, FUNC4(colocationId));

	pgDistPartition = FUNC12(FUNC1(), AccessShareLock);
	tupleDescriptor = FUNC6(pgDistPartition);
	scanDescriptor = FUNC13(pgDistPartition,
										FUNC0(),
										indexOK, NULL, scanKeyCount, scanKey);

	heapTuple = FUNC15(scanDescriptor);
	while (FUNC2(heapTuple))
	{
		Relation colocatedRelation = NULL;

		colocatedTableId = FUNC11(heapTuple, Anum_pg_dist_partition_logicalrelid,
										tupleDescriptor, &isNull);

		/*
		 * Make sure the relation isn't dropped for the remainder of
		 * the transaction.
		 */
		FUNC3(colocatedTableId, AccessShareLock);

		/*
		 * The relation might have been dropped just before we locked it.
		 * Let's look it up.
		 */
		colocatedRelation = FUNC7(colocatedTableId);
		if (FUNC8(colocatedRelation))
		{
			/* relation still exists, we can use it */
			FUNC5(colocatedRelation);
			break;
		}

		/* relation was dropped, try the next one */
		colocatedTableId = InvalidOid;

		heapTuple = FUNC15(scanDescriptor);
	}

	FUNC14(scanDescriptor);
	FUNC10(pgDistPartition, AccessShareLock);

	return colocatedTableId;
}