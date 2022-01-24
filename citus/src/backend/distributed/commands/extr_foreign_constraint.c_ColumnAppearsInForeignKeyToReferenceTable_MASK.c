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
struct TYPE_2__ {int /*<<< orphan*/  conrelid; int /*<<< orphan*/  confrelid; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int Anum_pg_constraint_confkey ; 
 int Anum_pg_constraint_conkey ; 
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
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

bool
FUNC13(char *columnName, Oid relationId)
{
	Relation pgConstraint = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;
	bool foreignKeyToReferenceTableIncludesGivenColumn = false;

	pgConstraint = FUNC9(ConstraintRelationId, AccessShareLock);

	FUNC7(&scanKey[0], Anum_pg_constraint_contype, BTEqualStrategyNumber, F_CHAREQ,
				FUNC1(CONSTRAINT_FOREIGN));

	scanDescriptor = FUNC10(pgConstraint, InvalidOid, false,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC12(scanDescriptor);
	while (FUNC3(heapTuple))
	{
		Oid referencedTableId = InvalidOid;
		Oid referencingTableId = InvalidOid;
		int pgConstraintKey = 0;
		Form_pg_constraint constraintForm = (Form_pg_constraint) FUNC2(heapTuple);

		referencedTableId = constraintForm->confrelid;
		referencingTableId = constraintForm->conrelid;

		if (referencedTableId == relationId)
		{
			pgConstraintKey = Anum_pg_constraint_confkey;
		}
		else if (referencingTableId == relationId)
		{
			pgConstraintKey = Anum_pg_constraint_conkey;
		}
		else
		{
			/*
			 * If the constraint is not from/to the given relation, we should simply
			 * skip.
			 */
			heapTuple = FUNC12(scanDescriptor);
			continue;
		}

		/*
		 * We check if the referenced table is a reference table. There cannot be
		 * any foreign constraint from a distributed table to a local table.
		 */
		FUNC0(FUNC5(referencedTableId));
		if (FUNC6(referencedTableId) != DISTRIBUTE_BY_NONE)
		{
			heapTuple = FUNC12(scanDescriptor);
			continue;
		}

		if (FUNC4(heapTuple, relationId,
													   pgConstraintKey, columnName))
		{
			foreignKeyToReferenceTableIncludesGivenColumn = true;
			break;
		}

		heapTuple = FUNC12(scanDescriptor);
	}

	/* clean up scan and close system catalog */
	FUNC11(scanDescriptor);
	FUNC8(pgConstraint, AccessShareLock);
	return foreignKeyToReferenceTableIncludesGivenColumn;
}