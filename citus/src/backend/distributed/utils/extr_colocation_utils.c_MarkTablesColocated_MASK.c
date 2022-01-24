#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  vartype; } ;
typedef  TYPE_1__ Var ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ INVALID_COLOCATION_ID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(Oid sourceRelationId, Oid targetRelationId)
{
	uint32 sourceColocationId = INVALID_COLOCATION_ID;
	uint32 targetColocationId = INVALID_COLOCATION_ID;
	Relation pgDistColocation = NULL;

	FUNC1(sourceRelationId, targetRelationId);
	FUNC0(sourceRelationId, targetRelationId);

	/*
	 * Get an exclusive lock on the colocation system catalog. Therefore, we
	 * can be sure that there will no modifications on the colocation table
	 * until this transaction is committed.
	 */
	pgDistColocation = FUNC12(FUNC4(), ExclusiveLock);

	/* check if shard placements are colocated */
	FUNC6(sourceRelationId, targetRelationId);

	/*
	 * Get colocation group of the source table, if the source table does not
	 * have a colocation group, create a new one, and set it for the source table.
	 */
	sourceColocationId = FUNC8(sourceRelationId);
	if (sourceColocationId == INVALID_COLOCATION_ID)
	{
		uint32 shardCount = FUNC7(sourceRelationId);
		uint32 shardReplicationFactor = FUNC9(sourceRelationId);

		Var *sourceDistributionColumn = FUNC5(sourceRelationId);
		Oid sourceDistributionColumnType = InvalidOid;

		/* reference tables has NULL distribution column */
		if (sourceDistributionColumn != NULL)
		{
			sourceDistributionColumnType = sourceDistributionColumn->vartype;
		}

		sourceColocationId = FUNC2(shardCount, shardReplicationFactor,
												   sourceDistributionColumnType);
		FUNC10(sourceRelationId, sourceColocationId);
	}

	targetColocationId = FUNC8(targetRelationId);

	/* finally set colocation group for the target relation */
	FUNC10(targetRelationId, sourceColocationId);

	/* if there is not any remaining table in the colocation group, delete it */
	FUNC3(targetColocationId);

	FUNC11(pgDistColocation, NoLock);
}