#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int INVALID_COLOCATION_ID ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ REPLICATION_MODEL_COORDINATOR ; 
 scalar_t__ ReplicationModel ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ShardCount ; 
 int /*<<< orphan*/  ShardReplicationFactor ; 
 int /*<<< orphan*/  ShareLock ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(Oid functionOid, char *colocateWithTableName,
						Oid distributionArgumentOid)
{
	int colocationId = INVALID_COLOCATION_ID;
	Relation pgDistColocation = FUNC13(FUNC2(), ShareLock);

	if (FUNC14(colocateWithTableName, "default", NAMEDATALEN) == 0)
	{
		Oid colocatedTableId = InvalidOid;

		/* check for default colocation group */
		colocationId = FUNC1(ShardCount, ShardReplicationFactor,
									distributionArgumentOid);

		if (colocationId == INVALID_COLOCATION_ID)
		{
			char *functionName = FUNC11(functionOid);

			FUNC7(ERROR, (FUNC8(ERRCODE_INVALID_PARAMETER_VALUE),
							FUNC10("cannot distribute the function \"%s\" since there "
								   "is no table to colocate with", functionName),
							FUNC9("Provide a distributed table via \"colocate_with\" "
									"option to create_distributed_function()")));
		}

		colocatedTableId = FUNC0(colocationId);
		if (colocatedTableId != InvalidOid)
		{
			FUNC3(functionOid, distributionArgumentOid,
												  colocatedTableId);
		}
		else if (ReplicationModel == REPLICATION_MODEL_COORDINATOR)
		{
			/* streaming replication model is required for metadata syncing */
			FUNC7(ERROR, (FUNC10("cannot create a function with a distribution "
								   "argument when citus.replication_model is "
								   "'statement'"),
							FUNC9("Set citus.replication_model to 'streaming' "
									"before creating distributed tables")));
		}
	}
	else
	{
		Oid sourceRelationId =
			FUNC4(FUNC6(colocateWithTableName), false);

		FUNC3(functionOid, distributionArgumentOid,
											  sourceRelationId);

		colocationId = FUNC5(sourceRelationId);
	}

	/* keep the lock */
	FUNC12(pgDistColocation, NoLock);

	return colocationId;
}