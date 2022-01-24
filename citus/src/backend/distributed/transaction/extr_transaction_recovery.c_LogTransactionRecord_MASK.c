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
typedef  int /*<<< orphan*/  isNulls ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_transaction_gid ; 
 int Anum_pg_dist_transaction_groupid ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int Natts_pg_dist_transaction ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int) ; 

void
FUNC10(int32 groupId, char *transactionName)
{
	Relation pgDistTransaction = NULL;
	TupleDesc tupleDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_transaction];
	bool isNulls[Natts_pg_dist_transaction];

	/* form new transaction tuple */
	FUNC9(values, 0, sizeof(values));
	FUNC9(isNulls, false, sizeof(isNulls));

	values[Anum_pg_dist_transaction_groupid - 1] = FUNC4(groupId);
	values[Anum_pg_dist_transaction_gid - 1] = FUNC0(transactionName);

	/* open transaction relation and insert new tuple */
	pgDistTransaction = FUNC8(FUNC3(), RowExclusiveLock);

	tupleDescriptor = FUNC5(pgDistTransaction);
	heapTuple = FUNC7(tupleDescriptor, values, isNulls);

	FUNC1(pgDistTransaction, heapTuple);

	FUNC2();

	/* close relation and invalidate previous cache entry */
	FUNC6(pgDistTransaction, NoLock);
}