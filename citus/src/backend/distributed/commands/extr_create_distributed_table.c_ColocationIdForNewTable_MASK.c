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
typedef  int /*<<< orphan*/  text ;
struct TYPE_3__ {int /*<<< orphan*/  vartype; } ;
typedef  TYPE_1__ Var ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 char DISTRIBUTE_BY_APPEND ; 
 char DISTRIBUTE_BY_NONE ; 
 char DISTRIBUTE_BY_RANGE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ INVALID_COLOCATION_ID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ShardCount ; 
 int /*<<< orphan*/  ShardReplicationFactor ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32
FUNC16(Oid relationId, Var *distributionColumn,
						char distributionMethod, char replicationModel,
						char *colocateWithTableName, bool viaDeprecatedAPI)
{
	uint32 colocationId = INVALID_COLOCATION_ID;

	if (viaDeprecatedAPI)
	{
		return colocationId;
	}
	else if (distributionMethod == DISTRIBUTE_BY_APPEND ||
			 distributionMethod == DISTRIBUTE_BY_RANGE)
	{
		if (FUNC15(colocateWithTableName, "default", NAMEDATALEN) != 0)
		{
			FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC12("cannot distribute relation"),
							FUNC11("Currently, colocate_with option is only supported "
									  "for hash distributed tables.")));
		}

		return colocationId;
	}
	else if (distributionMethod == DISTRIBUTE_BY_NONE)
	{
		return FUNC2();
	}
	else
	{
		/*
		 * Get an exclusive lock on the colocation system catalog. Therefore, we
		 * can be sure that there will no modifications on the colocation table
		 * until this transaction is committed.
		 */
		Relation pgDistColocation = FUNC14(FUNC3(), ExclusiveLock);

		Oid distributionColumnType = distributionColumn->vartype;
		bool createdColocationGroup = false;

		if (FUNC15(colocateWithTableName, "default", NAMEDATALEN) == 0)
		{
			/* check for default colocation group */
			colocationId = FUNC0(ShardCount, ShardReplicationFactor,
										distributionColumnType);

			if (colocationId == INVALID_COLOCATION_ID)
			{
				colocationId = FUNC1(ShardCount, ShardReplicationFactor,
													 distributionColumnType);
				createdColocationGroup = true;
			}
		}
		else if (FUNC15(colocateWithTableName, "none", NAMEDATALEN) == 0)
		{
			colocationId = FUNC5();

			createdColocationGroup = true;
		}
		else
		{
			text *colocateWithTableNameText = FUNC8(colocateWithTableName);
			Oid sourceRelationId = FUNC6(colocateWithTableNameText, false);

			FUNC4(relationId, replicationModel,
										  distributionColumnType, sourceRelationId);

			colocationId = FUNC7(sourceRelationId);
		}

		/*
		 * If we created a new colocation group then we need to keep the lock to
		 * prevent a concurrent create_distributed_table call from creating another
		 * colocation group with the same parameters. If we're using an existing
		 * colocation group then other transactions will use the same one.
		 */
		if (createdColocationGroup)
		{
			/* keep the exclusive lock */
			FUNC13(pgDistColocation, NoLock);
		}
		else
		{
			/* release the exclusive lock */
			FUNC13(pgDistColocation, ExclusiveLock);
		}
	}

	return colocationId;
}