#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {scalar_t__ contype; TYPE_1__ conname; int /*<<< orphan*/  conparentid; } ;
struct TYPE_7__ {int addCatalog; void* schemas; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_2__ OverrideSearchPath ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* NIL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

List *
FUNC15(Oid relationId)
{
	List *tableForeignConstraints = NIL;

	Relation pgConstraint = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;

	/*
	 * Set search_path to NIL so that all objects outside of pg_catalog will be
	 * schema-prefixed. pg_catalog will be added automatically when we call
	 * PushOverrideSearchPath(), since we set addCatalog to true;
	 */
	OverrideSearchPath *overridePath = FUNC1(CurrentMemoryContext);
	overridePath->schemas = NIL;
	overridePath->addCatalog = true;
	FUNC5(overridePath);

	/* open system catalog and scan all constraints that belong to this table */
	pgConstraint = FUNC9(ConstraintRelationId, AccessShareLock);
	FUNC6(&scanKey[0], Anum_pg_constraint_conrelid, BTEqualStrategyNumber, F_OIDEQ,
				relationId);
	scanDescriptor = FUNC12(pgConstraint, ConstraintRelidTypidNameIndexId,
										true, NULL,
										scanKeyCount, scanKey);

	heapTuple = FUNC14(scanDescriptor);
	while (FUNC2(heapTuple))
	{
		Form_pg_constraint constraintForm = (Form_pg_constraint) FUNC0(heapTuple);

		bool inheritedConstraint = FUNC3(constraintForm->conparentid);

		if (!inheritedConstraint && constraintForm->contype == CONSTRAINT_FOREIGN)
		{
			Oid constraintId = FUNC7(relationId,
														   constraintForm->conname.data,
														   true);
			char *statementDef = FUNC11(constraintId);

			tableForeignConstraints = FUNC10(tableForeignConstraints, statementDef);
		}

		heapTuple = FUNC14(scanDescriptor);
	}

	/* clean up scan and close system catalog */
	FUNC13(scanDescriptor);
	FUNC8(pgConstraint, AccessShareLock);

	/* revert back to original search_path */
	FUNC4();

	return tableForeignConstraints;
}