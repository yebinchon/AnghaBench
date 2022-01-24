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
struct TYPE_4__ {scalar_t__ conrelid; scalar_t__ confrelid; TYPE_1__ conname; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_contype ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 scalar_t__ DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/  F_CHAREQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

bool
FUNC13(char *constraintName, Oid relationId)
{
	Relation pgConstraint = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;
	bool foreignKeyToReferenceTable = false;


	pgConstraint = FUNC8(ConstraintRelationId, AccessShareLock);

	FUNC6(&scanKey[0], Anum_pg_constraint_contype, BTEqualStrategyNumber, F_CHAREQ,
				FUNC1(CONSTRAINT_FOREIGN));
	scanDescriptor = FUNC10(pgConstraint, InvalidOid, false,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC12(scanDescriptor);
	while (FUNC3(heapTuple))
	{
		Oid referencedTableId = InvalidOid;
		Form_pg_constraint constraintForm = (Form_pg_constraint) FUNC2(heapTuple);
		char *tupleConstraintName = (constraintForm->conname).data;

		if (FUNC9(constraintName, tupleConstraintName, NAMEDATALEN) != 0 ||
			constraintForm->conrelid != relationId)
		{
			heapTuple = FUNC12(scanDescriptor);
			continue;
		}

		referencedTableId = constraintForm->confrelid;

		FUNC0(FUNC4(referencedTableId));

		if (FUNC5(referencedTableId) == DISTRIBUTE_BY_NONE)
		{
			foreignKeyToReferenceTable = true;
			break;
		}

		heapTuple = FUNC12(scanDescriptor);
	}

	/* clean up scan and close system catalog */
	FUNC11(scanDescriptor);
	FUNC7(pgConstraint, AccessShareLock);

	return foreignKeyToReferenceTable;
}