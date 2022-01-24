#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_colocation_colocationid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(uint32 colocationId)
{
	Relation pgDistColocation = NULL;
	SysScanDesc scanDescriptor = NULL;
	int scanKeyCount = 1;
	ScanKeyData scanKey[1];
	bool indexOK = false;
	HeapTuple heapTuple = NULL;

	pgDistColocation = FUNC8(FUNC2(), RowExclusiveLock);

	FUNC5(&scanKey[0], Anum_pg_dist_colocation_colocationid,
				BTEqualStrategyNumber, F_INT4EQ, FUNC6(colocationId));

	scanDescriptor = FUNC11(pgDistColocation, InvalidOid, indexOK,
										NULL, scanKeyCount, scanKey);

	/* if a record is found, delete it */
	heapTuple = FUNC13(scanDescriptor);
	if (FUNC3(heapTuple))
	{
		/*
		 * simple_heap_delete() expects that the caller has at least an
		 * AccessShareLock on replica identity index.
		 */
		Relation replicaIndex =
			FUNC9(FUNC4(pgDistColocation),
					   AccessShareLock);
		FUNC10(pgDistColocation, &(heapTuple->t_self));

		FUNC0(FUNC2());
		FUNC1();
		FUNC7(replicaIndex, AccessShareLock);
	}

	FUNC12(scanDescriptor);
	FUNC7(pgDistColocation, RowExclusiveLock);
}