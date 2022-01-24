#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_10__ {int /*<<< orphan*/  vartype; } ;
typedef  TYPE_1__ Var ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_11__ {scalar_t__ tdhasoid; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  BTORDER_PROC ; 
 int /*<<< orphan*/  BTREE_AM_OID ; 
 char DISTRIBUTE_BY_HASH ; 
 char DISTRIBUTE_BY_NONE ; 
 char DISTRIBUTE_BY_RANGE ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HASHSTANDARD_PROC ; 
 int /*<<< orphan*/  HASH_AM_OID ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 char* FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(Oid relationId, Var *distributionColumn,
							   char distributionMethod, uint32 colocationId,
							   char replicationModel, bool viaDeprecatedAPI)
{
	Relation relation = NULL;
	TupleDesc relationDesc = NULL;
	char *relationName = NULL;
	Oid parentRelationId = InvalidOid;

	FUNC3(relationId);
	FUNC1(relationId, distributionMethod, viaDeprecatedAPI);
	FUNC2(InvalidOid, replicationModel);

	/* we assume callers took necessary locks */
	relation = FUNC24(relationId, NoLock);
	relationDesc = FUNC10(relation);
	relationName = FUNC11(relation);

	if (!FUNC12(relation))
	{
		FUNC15(ERROR, (FUNC20(
							"cannot distribute relations using non-heap access methods")));
	}

#if PG_VERSION_NUM < 120000

	/* verify target relation does not use WITH (OIDS) PostgreSQL feature */
	if (relationDesc->tdhasoid)
	{
		FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC20("cannot distribute relation: %s", relationName),
						FUNC18("Distributed relations must not specify the WITH "
								  "(OIDS) option in their definitions.")));
	}
#endif

	/* verify target relation does not use identity columns */
	if (FUNC13(relationDesc))
	{
		FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC20("cannot distribute relation: %s", relationName),
						FUNC18("Distributed relations must not use GENERATED "
								  "... AS IDENTITY.")));
	}

	/* verify target relation is not distributed by a generated columns */
	if (distributionMethod != DISTRIBUTE_BY_NONE &&
		FUNC0(relationDesc, distributionColumn))
	{
		FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC20("cannot distribute relation: %s", relationName),
						FUNC18("Distribution column must not use GENERATED ALWAYS "
								  "AS (...) STORED.")));
	}

	/* check for support function needed by specified partition method */
	if (distributionMethod == DISTRIBUTE_BY_HASH)
	{
		Oid hashSupportFunction = FUNC14(distributionColumn,
														   HASH_AM_OID,
														   HASHSTANDARD_PROC);
		if (hashSupportFunction == InvalidOid)
		{
			FUNC15(ERROR, (FUNC16(ERRCODE_UNDEFINED_FUNCTION),
							FUNC20("could not identify a hash function for type %s",
								   FUNC21(distributionColumn->vartype)),
							FUNC17(distributionColumn->vartype),
							FUNC18("Partition column types must have a hash function "
									  "defined to use hash partitioning.")));
		}
	}
	else if (distributionMethod == DISTRIBUTE_BY_RANGE)
	{
		Oid btreeSupportFunction = FUNC14(distributionColumn,
															BTREE_AM_OID, BTORDER_PROC);
		if (btreeSupportFunction == InvalidOid)
		{
			FUNC15(ERROR,
					(FUNC16(ERRCODE_UNDEFINED_FUNCTION),
					 FUNC20("could not identify a comparison function for type %s",
							FUNC21(distributionColumn->vartype)),
					 FUNC17(distributionColumn->vartype),
					 FUNC18("Partition column types must have a comparison function "
							   "defined to use range partitioning.")));
		}
	}

	if (FUNC8(relationId))
	{
		parentRelationId = FUNC7(relationId);
	}

	/* partitions cannot be distributed if their parent is not distributed */
	if (FUNC8(relationId) && !FUNC6(parentRelationId))
	{
		char *parentRelationName = FUNC22(parentRelationId);

		FUNC15(ERROR, (FUNC20("cannot distribute relation \"%s\" which is partition of "
							   "\"%s\"", relationName, parentRelationName),
						FUNC18("Citus does not support distributing partitions "
								  "if their parent is not distributed table."),
						FUNC19("Distribute the partitioned table \"%s\" instead.",
								parentRelationName)));
	}

	/*
	 * These checks are mostly for partitioned tables not partitions because we prevent
	 * distributing partitions directly in the above check. However, partitions can still
	 * reach this point because, we call CreateDistributedTable for partitions if their
	 * parent table is distributed.
	 */
	if (FUNC9(relationId))
	{
		/* we cannot distribute partitioned tables with master_create_distributed_table */
		if (viaDeprecatedAPI)
		{
			FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC20("distributing partitioned tables in only supported "
								   "with create_distributed_table UDF")));
		}

		/* distributing partitioned tables in only supported for hash-distribution */
		if (distributionMethod != DISTRIBUTE_BY_HASH)
		{
			FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC20("distributing partitioned tables in only supported "
								   "for hash-distributed tables")));
		}

		/* we don't support distributing tables with multi-level partitioning */
		if (FUNC8(relationId))
		{
			char *parentRelationName = FUNC22(parentRelationId);

			FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC20("distributing multi-level partitioned tables "
								   "is not supported"),
							FUNC18("Relation \"%s\" is partitioned table itself and "
									  "it is also partition of relation \"%s\".",
									  relationName, parentRelationName)));
		}
	}

	FUNC4(relation, distributionMethod, distributionColumn,
								 colocationId);


	FUNC5(relation);
	FUNC23(relation, NoLock);
}