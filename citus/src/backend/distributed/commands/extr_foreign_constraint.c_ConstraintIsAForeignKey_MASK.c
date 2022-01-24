#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* data; } ;
struct TYPE_4__ {scalar_t__ conrelid; TYPE_1__ conname; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_contype ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  F_CHAREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

bool
FUNC10(char *constraintNameInput, Oid relationId)
{
	Relation pgConstraint = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;

	pgConstraint = FUNC5(ConstraintRelationId, AccessShareLock);

	FUNC3(&scanKey[0], Anum_pg_constraint_contype, BTEqualStrategyNumber, F_CHAREQ,
				FUNC0(CONSTRAINT_FOREIGN));
	scanDescriptor = FUNC7(pgConstraint, InvalidOid, false,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC9(scanDescriptor);
	while (FUNC2(heapTuple))
	{
		Form_pg_constraint constraintForm = (Form_pg_constraint) FUNC1(heapTuple);
		char *constraintName = (constraintForm->conname).data;

		if (FUNC6(constraintName, constraintNameInput, NAMEDATALEN) == 0 &&
			constraintForm->conrelid == relationId)
		{
			FUNC8(scanDescriptor);
			FUNC4(pgConstraint, AccessShareLock);

			return true;
		}

		heapTuple = FUNC9(scanDescriptor);
	}

	/* clean up scan and close system catalog */
	FUNC8(scanDescriptor);
	FUNC4(pgConstraint, AccessShareLock);

	return false;
}