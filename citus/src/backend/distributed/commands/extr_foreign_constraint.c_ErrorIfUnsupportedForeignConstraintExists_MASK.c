#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  Var ;
struct TYPE_8__ {scalar_t__ contype; scalar_t__ confdeltype; scalar_t__ confupdtype; int /*<<< orphan*/  confrelid; } ;
struct TYPE_7__ {int /*<<< orphan*/  rd_id; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 char DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FKCONSTR_ACTION_CASCADE ; 
 scalar_t__ FKCONSTR_ACTION_SETDEFAULT ; 
 scalar_t__ FKCONSTR_ACTION_SETNULL ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_COLOCATION_ID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ShardReplicationFactor ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 

void
FUNC19(Relation relation, char referencingDistMethod,
										  Var *referencingDistKey,
										  uint32 referencingColocationId)
{
	Relation pgConstraint = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;

	Oid referencingTableId = relation->rd_id;
	Oid referencedTableId = InvalidOid;
	uint32 referencedColocationId = INVALID_COLOCATION_ID;
	bool selfReferencingTable = false;
	bool referencingNotReplicated = true;

	if (FUNC4(referencingTableId))
	{
		/* ALTER TABLE command is applied over single replicated table */
		referencingNotReplicated = FUNC7(referencingTableId);
	}
	else
	{
		/* Creating single replicated table with foreign constraint */
		referencingNotReplicated = (ShardReplicationFactor == 1);
	}

	pgConstraint = FUNC15(ConstraintRelationId, AccessShareLock);
	FUNC6(&scanKey[0], Anum_pg_constraint_conrelid, BTEqualStrategyNumber, F_OIDEQ,
				relation->rd_id);
	scanDescriptor = FUNC16(pgConstraint, ConstraintRelidTypidNameIndexId,
										true, NULL,
										scanKeyCount, scanKey);

	heapTuple = FUNC18(scanDescriptor);
	while (FUNC3(heapTuple))
	{
		Form_pg_constraint constraintForm = (Form_pg_constraint) FUNC2(heapTuple);
		bool referencedIsDistributed = false;
		char referencedDistMethod = 0;
		Var *referencedDistKey = NULL;
		bool referencingIsReferenceTable = false;
		bool referencedIsReferenceTable = false;
		int referencingAttrIndex = -1;
		int referencedAttrIndex = -1;
		bool referencingColumnsIncludeDistKey = false;
		bool foreignConstraintOnDistKey = false;

		if (constraintForm->contype != CONSTRAINT_FOREIGN)
		{
			heapTuple = FUNC18(scanDescriptor);
			continue;
		}

		referencedTableId = constraintForm->confrelid;
		selfReferencingTable = (referencingTableId == referencedTableId);

		referencedIsDistributed = FUNC4(referencedTableId);
		if (!referencedIsDistributed && !selfReferencingTable)
		{
			FUNC9(ERROR, (FUNC10(ERRCODE_INVALID_TABLE_DEFINITION),
							FUNC13("cannot create foreign key constraint"),
							FUNC11("Referenced table must be a distributed table"
									  " or a reference table.")));
		}

		if (!selfReferencingTable)
		{
			referencedDistMethod = FUNC5(referencedTableId);
			referencedDistKey = (referencedDistMethod == DISTRIBUTE_BY_NONE) ?
								NULL :
								FUNC0(referencedTableId);
			referencedColocationId = FUNC8(referencedTableId);
		}
		else
		{
			referencedDistMethod = referencingDistMethod;
			referencedDistKey = referencingDistKey;
			referencedColocationId = referencingColocationId;
		}

		referencingIsReferenceTable = (referencingDistMethod == DISTRIBUTE_BY_NONE);
		referencedIsReferenceTable = (referencedDistMethod == DISTRIBUTE_BY_NONE);


		/*
		 * We support foreign keys between reference tables. No more checks
		 * are necessary.
		 */
		if (referencingIsReferenceTable && referencedIsReferenceTable)
		{
			heapTuple = FUNC18(scanDescriptor);
			continue;
		}

		/*
		 * Foreign keys from reference tables to distributed tables are not
		 * supported.
		 */
		if (referencingIsReferenceTable && !referencedIsReferenceTable)
		{
			FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC13("cannot create foreign key constraint "
								   "since foreign keys from reference tables "
								   "to distributed tables are not supported"),
							FUNC11("A reference table can only have reference "
									  "keys to other reference tables")));
		}

		/*
		 * To enforce foreign constraints, tables must be co-located unless a
		 * reference table is referenced.
		 */
		if (referencingColocationId == INVALID_COLOCATION_ID ||
			(referencingColocationId != referencedColocationId &&
			 !referencedIsReferenceTable))
		{
			FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC13("cannot create foreign key constraint since "
								   "relations are not colocated or not referencing "
								   "a reference table"),
							FUNC11(
								"A distributed table can only have foreign keys "
								"if it is referencing another colocated hash "
								"distributed table or a reference table")));
		}

		FUNC1(heapTuple,
									  referencingDistKey,
									  referencedDistKey,
									  &referencingAttrIndex,
									  &referencedAttrIndex);
		referencingColumnsIncludeDistKey = (referencingAttrIndex != -1);
		foreignConstraintOnDistKey =
			(referencingColumnsIncludeDistKey && referencingAttrIndex ==
			 referencedAttrIndex);

		/*
		 * If columns in the foreign key includes the distribution key from the
		 * referencing side, we do not allow update/delete operations through
		 * foreign key constraints (e.g. ... ON UPDATE SET NULL)
		 */
		if (referencingColumnsIncludeDistKey)
		{
			/*
			 * ON DELETE SET NULL and ON DELETE SET DEFAULT is not supported. Because we do
			 * not want to set partition column to NULL or default value.
			 */
			if (constraintForm->confdeltype == FKCONSTR_ACTION_SETNULL ||
				constraintForm->confdeltype == FKCONSTR_ACTION_SETDEFAULT)
			{
				FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
								FUNC13("cannot create foreign key constraint"),
								FUNC11("SET NULL or SET DEFAULT is not supported"
										  " in ON DELETE operation when distribution "
										  "key is included in the foreign key constraint")));
			}

			/*
			 * ON UPDATE SET NULL, ON UPDATE SET DEFAULT and UPDATE CASCADE is not supported.
			 * Because we do not want to set partition column to NULL or default value. Also
			 * cascading update operation would require re-partitioning. Updating partition
			 * column value is not allowed anyway even outside of foreign key concept.
			 */
			if (constraintForm->confupdtype == FKCONSTR_ACTION_SETNULL ||
				constraintForm->confupdtype == FKCONSTR_ACTION_SETDEFAULT ||
				constraintForm->confupdtype == FKCONSTR_ACTION_CASCADE)
			{
				FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
								FUNC13("cannot create foreign key constraint"),
								FUNC11("SET NULL, SET DEFAULT or CASCADE is not "
										  "supported in ON UPDATE operation  when "
										  "distribution key included in the foreign "
										  "constraint.")));
			}
		}

		/*
		 * if tables are hash-distributed and colocated, we need to make sure that
		 * the distribution key is included in foreign constraint.
		 */
		if (!referencedIsReferenceTable && !foreignConstraintOnDistKey)
		{
			FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC13("cannot create foreign key constraint"),
							FUNC11("Foreign keys are supported in two cases, "
									  "either in between two colocated tables including "
									  "partition column in the same ordinal in the both "
									  "tables or from distributed to reference tables")));
		}

		/*
		 * We do not allow to create foreign constraints if shard replication factor is
		 * greater than 1. Because in our current design, multiple replicas may cause
		 * locking problems and inconsistent shard contents.
		 *
		 * Note that we allow referenced table to be a reference table (e.g., not a
		 * single replicated table). This is allowed since (a) we are sure that
		 * placements always be in the same state (b) executors are aware of reference
		 * tables and handle concurrency related issues accordingly.
		 */
		if (!referencingNotReplicated)
		{
			FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC13("cannot create foreign key constraint"),
							FUNC11("Citus Community Edition currently supports "
									  "foreign key constraints only for "
									  "\"citus.shard_replication_factor = 1\"."),
							FUNC12("Please change \"citus.shard_replication_factor to "
									"1\". To learn more about using foreign keys with "
									"other replication factors, please contact us at "
									"https://citusdata.com/about/contact_us.")));
		}

		heapTuple = FUNC18(scanDescriptor);
	}

	/* clean up scan and close system catalog */
	FUNC17(scanDescriptor);
	FUNC14(pgConstraint, AccessShareLock);
}