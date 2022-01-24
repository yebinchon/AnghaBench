#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  colocationid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_dist_colocation ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_colocation_distributioncolumntype ; 
 int /*<<< orphan*/  Anum_pg_dist_colocation_replicationfactor ; 
 int /*<<< orphan*/  Anum_pg_dist_colocation_shardcount ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INVALID_COLOCATION_ID ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

uint32
FUNC13(int shardCount, int replicationFactor, Oid distributionColumnType)
{
	uint32 colocationId = INVALID_COLOCATION_ID;
	HeapTuple colocationTuple = NULL;
	SysScanDesc scanDescriptor;
	const int scanKeyCount = 3;
	ScanKeyData scanKey[3];
	bool indexOK = true;

	Relation pgDistColocation = FUNC9(FUNC1(), AccessShareLock);

	/* set scan arguments */
	FUNC6(&scanKey[0], Anum_pg_dist_colocation_shardcount,
				BTEqualStrategyNumber, F_INT4EQ, FUNC7(shardCount));
	FUNC6(&scanKey[1], Anum_pg_dist_colocation_replicationfactor,
				BTEqualStrategyNumber, F_INT4EQ, FUNC4(replicationFactor));
	FUNC6(&scanKey[2], Anum_pg_dist_colocation_distributioncolumntype,
				BTEqualStrategyNumber, F_OIDEQ, FUNC5(distributionColumnType));

	scanDescriptor = FUNC10(pgDistColocation,
										FUNC0(),
										indexOK, NULL, scanKeyCount, scanKey);

	colocationTuple = FUNC12(scanDescriptor);
	if (FUNC3(colocationTuple))
	{
		Form_pg_dist_colocation colocationForm =
			(Form_pg_dist_colocation) FUNC2(colocationTuple);

		colocationId = colocationForm->colocationid;
	}

	FUNC11(scanDescriptor);
	FUNC8(pgDistColocation, AccessShareLock);

	return colocationId;
}