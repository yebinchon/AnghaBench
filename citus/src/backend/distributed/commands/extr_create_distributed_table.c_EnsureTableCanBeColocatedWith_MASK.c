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

/* Variables and functions */
 char DISTRIBUTE_BY_HASH ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(Oid relationId, char replicationModel,
							  Oid distributionColumnType, Oid sourceRelationId)
{
	DistTableCacheEntry *sourceTableEntry = FUNC1(sourceRelationId);
	char sourceDistributionMethod = sourceTableEntry->partitionMethod;
	char sourceReplicationModel = sourceTableEntry->replicationModel;
	Var *sourceDistributionColumn = FUNC0(sourceRelationId);
	Oid sourceDistributionColumnType = InvalidOid;

	if (sourceDistributionMethod != DISTRIBUTE_BY_HASH)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC5("cannot distribute relation"),
						FUNC4("Currently, colocate_with option is only supported "
								  "for hash distributed tables.")));
	}

	if (sourceReplicationModel != replicationModel)
	{
		char *relationName = FUNC6(relationId);
		char *sourceRelationName = FUNC6(sourceRelationId);

		FUNC2(ERROR, (FUNC5("cannot colocate tables %s and %s",
							   sourceRelationName, relationName),
						FUNC4("Replication models don't match for %s and %s.",
								  sourceRelationName, relationName)));
	}

	sourceDistributionColumnType = sourceDistributionColumn->vartype;
	if (sourceDistributionColumnType != distributionColumnType)
	{
		char *relationName = FUNC6(relationId);
		char *sourceRelationName = FUNC6(sourceRelationId);

		FUNC2(ERROR, (FUNC5("cannot colocate tables %s and %s",
							   sourceRelationName, relationName),
						FUNC4("Distribution column types don't match for "
								  "%s and %s.", sourceRelationName,
								  relationName)));
	}
}