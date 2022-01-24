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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  isNulls ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_colocation_colocationid ; 
 int Anum_pg_dist_colocation_distributioncolumntype ; 
 int Anum_pg_dist_colocation_replicationfactor ; 
 int Anum_pg_dist_colocation_shardcount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int Natts_pg_dist_colocation ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 

uint32
FUNC11(int shardCount, int replicationFactor, Oid distributionColumnType)
{
	uint32 colocationId = FUNC3();
	Relation pgDistColocation = NULL;
	TupleDesc tupleDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_colocation];
	bool isNulls[Natts_pg_dist_colocation];

	/* form new colocation tuple */
	FUNC10(values, 0, sizeof(values));
	FUNC10(isNulls, false, sizeof(isNulls));

	values[Anum_pg_dist_colocation_colocationid - 1] = FUNC6(colocationId);
	values[Anum_pg_dist_colocation_shardcount - 1] = FUNC6(shardCount);
	values[Anum_pg_dist_colocation_replicationfactor - 1] =
		FUNC6(replicationFactor);
	values[Anum_pg_dist_colocation_distributioncolumntype - 1] =
		FUNC4(distributionColumnType);

	/* open colocation relation and insert the new tuple */
	pgDistColocation = FUNC9(FUNC2(), RowExclusiveLock);

	tupleDescriptor = FUNC5(pgDistColocation);
	heapTuple = FUNC8(tupleDescriptor, values, isNulls);

	FUNC0(pgDistColocation, heapTuple);

	/* increment the counter so that next command can see the row */
	FUNC1();
	FUNC7(pgDistColocation, RowExclusiveLock);

	return colocationId;
}