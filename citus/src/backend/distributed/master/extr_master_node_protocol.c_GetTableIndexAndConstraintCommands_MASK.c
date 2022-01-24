#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ indexrelid; scalar_t__ indisclustered; scalar_t__ indisexclusion; scalar_t__ indisunique; scalar_t__ indisprimary; } ;
struct TYPE_5__ {int addCatalog; void* schemas; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ OverrideSearchPath ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_index_indrelid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IndexIndrelidIndexId ; 
 int /*<<< orphan*/  IndexRelationId ; 
 scalar_t__ InvalidOid ; 
 void* NIL ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (scalar_t__) ; 
 char* FUNC13 (scalar_t__) ; 
 char* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 

List *
FUNC18(Oid relationId)
{
	List *indexDDLEventList = NIL;
	Relation pgIndex = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;

	/*
	 * Set search_path to NIL so that all objects outside of pg_catalog will be
	 * schema-prefixed. pg_catalog will be added automatically when we call
	 * PushOverrideSearchPath(), since we set addCatalog to true;
	 */
	OverrideSearchPath *overridePath = FUNC2(CurrentMemoryContext);
	overridePath->schemas = NIL;
	overridePath->addCatalog = true;
	FUNC6(overridePath);

	/* open system catalog and scan all indexes that belong to this table */
	pgIndex = FUNC10(IndexRelationId, AccessShareLock);

	FUNC7(&scanKey[0], Anum_pg_index_indrelid,
				BTEqualStrategyNumber, F_OIDEQ, relationId);

	scanDescriptor = FUNC15(pgIndex,
										IndexIndrelidIndexId, true, /* indexOK */
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC17(scanDescriptor);
	while (FUNC3(heapTuple))
	{
		Form_pg_index indexForm = (Form_pg_index) FUNC1(heapTuple);
		Oid indexId = indexForm->indexrelid;
		bool isConstraint = false;
		char *statementDef = NULL;

		/*
		 * A primary key index is always created by a constraint statement.
		 * A unique key index or exclusion index is created by a constraint
		 * if and only if the index has a corresponding constraint entry in pg_depend.
		 * Any other index form is never associated with a constraint.
		 */
		if (indexForm->indisprimary)
		{
			isConstraint = true;
		}
		else if (indexForm->indisunique || indexForm->indisexclusion)
		{
			Oid constraintId = FUNC8(indexId);
			isConstraint = FUNC4(constraintId);
		}
		else
		{
			isConstraint = false;
		}

		/* get the corresponding constraint or index statement */
		if (isConstraint)
		{
			Oid constraintId = FUNC8(indexId);
			FUNC0(constraintId != InvalidOid);

			statementDef = FUNC12(constraintId);
		}
		else
		{
			statementDef = FUNC14(indexId);
		}

		/* append found constraint or index definition to the list */
		indexDDLEventList = FUNC11(indexDDLEventList, statementDef);

		/* if table is clustered on this index, append definition to the list */
		if (indexForm->indisclustered)
		{
			char *clusteredDef = FUNC13(indexId);
			FUNC0(clusteredDef != NULL);

			indexDDLEventList = FUNC11(indexDDLEventList, clusteredDef);
		}

		heapTuple = FUNC17(scanDescriptor);
	}

	/* clean up scan and close system catalog */
	FUNC16(scanDescriptor);
	FUNC9(pgIndex, AccessShareLock);

	/* revert back to original search_path */
	FUNC5();

	return indexDDLEventList;
}