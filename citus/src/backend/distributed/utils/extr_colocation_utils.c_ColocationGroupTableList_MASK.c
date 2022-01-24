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
typedef  int /*<<< orphan*/  List ;
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
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC13(Oid colocationId)
{
	List *colocatedTableList = NIL;
	Relation pgDistPartition = NULL;
	TupleDesc tupleDescriptor = NULL;
	SysScanDesc scanDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	bool indexOK = true;
	int scanKeyCount = 1;
	ScanKeyData scanKey[1];

	/*
	 * If distribution type of the table is not hash, the table is only co-located
	 * with itself.
	 */
	if (colocationId == INVALID_COLOCATION_ID)
	{
		return NIL;
	}

	FUNC5(&scanKey[0], Anum_pg_dist_partition_colocationid,
				BTEqualStrategyNumber, F_INT4EQ, FUNC3(colocationId));

	pgDistPartition = FUNC8(FUNC1(), AccessShareLock);
	tupleDescriptor = FUNC4(pgDistPartition);
	scanDescriptor = FUNC10(pgDistPartition,
										FUNC0(),
										indexOK, NULL, scanKeyCount, scanKey);

	heapTuple = FUNC12(scanDescriptor);
	while (FUNC2(heapTuple))
	{
		bool isNull = false;
		Oid colocatedTableId = FUNC7(heapTuple,
											Anum_pg_dist_partition_logicalrelid,
											tupleDescriptor, &isNull);

		colocatedTableList = FUNC9(colocatedTableList, colocatedTableId);
		heapTuple = FUNC12(scanDescriptor);
	}

	FUNC11(scanDescriptor);
	FUNC6(pgDistPartition, AccessShareLock);

	return colocatedTableList;
}