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
struct TYPE_5__ {scalar_t__ vartype; } ;
typedef  TYPE_1__ Var ;
struct TYPE_6__ {char partitionMethod; char replicationModel; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__ DistTableCacheEntry ;
typedef  scalar_t__ CoercionPathType ;

/* Variables and functions */
 int /*<<< orphan*/  COERCION_EXPLICIT ; 
 scalar_t__ COERCION_PATH_NONE ; 
 char DISTRIBUTE_BY_HASH ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 char REPLICATION_MODEL_STREAMING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10(Oid functionOid, Oid distributionColumnType,
									  Oid sourceRelationId)
{
	DistTableCacheEntry *sourceTableEntry = FUNC1(sourceRelationId);
	char sourceDistributionMethod = sourceTableEntry->partitionMethod;
	char sourceReplicationModel = sourceTableEntry->replicationModel;
	Var *sourceDistributionColumn = FUNC0(sourceRelationId);
	Oid sourceDistributionColumnType = InvalidOid;

	if (sourceDistributionMethod != DISTRIBUTE_BY_HASH)
	{
		char *functionName = FUNC8(functionOid);
		char *sourceRelationName = FUNC9(sourceRelationId);

		FUNC2(ERROR, (FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC6("cannot colocate function \"%s\" and table \"%s\" because "
							   "colocate_with option is only supported for hash "
							   "distributed tables.", functionName,
							   sourceRelationName)));
	}

	if (sourceReplicationModel != REPLICATION_MODEL_STREAMING)
	{
		char *functionName = FUNC8(functionOid);
		char *sourceRelationName = FUNC9(sourceRelationId);

		FUNC2(ERROR, (FUNC6("cannot colocate function \"%s\" and table \"%s\"",
							   functionName, sourceRelationName),
						FUNC4("Citus currently only supports colocating function "
								  "with distributed tables that are created using "
								  "streaming replication model."),
						FUNC5("When distributing tables make sure that "
								"citus.replication_model = 'streaming'")));
	}

	/*
	 * If the types are the same, we're good. If not, we still check if there
	 * is any coercion path between the types.
	 */
	sourceDistributionColumnType = sourceDistributionColumn->vartype;
	if (sourceDistributionColumnType != distributionColumnType)
	{
		Oid coercionFuncId = InvalidOid;
		CoercionPathType coercionType = COERCION_PATH_NONE;

		coercionType =
			FUNC7(distributionColumnType, sourceDistributionColumnType,
								  COERCION_EXPLICIT, &coercionFuncId);

		/* if there is no path for coercion, error out*/
		if (coercionType == COERCION_PATH_NONE)
		{
			char *functionName = FUNC8(functionOid);
			char *sourceRelationName = FUNC9(sourceRelationId);

			FUNC2(ERROR, (FUNC6("cannot colocate function \"%s\" and table \"%s\" "
								   "because distribution column types don't match and "
								   "there is no coercion path", sourceRelationName,
								   functionName)));
		}
	}
}