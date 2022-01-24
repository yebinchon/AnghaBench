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
struct TYPE_3__ {scalar_t__ partitionMethod; scalar_t__ referencedRelationsViaForeignKey; } ;
typedef  int /*<<< orphan*/  ShardPlacementAccessType ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ DISTRIBUTE_BY_HASH ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EnforceForeignKeyRestrictions ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MultiShardConnectionType ; 
 scalar_t__ NIL ; 
 scalar_t__ PARALLEL_CONNECTION ; 
 int /*<<< orphan*/  PLACEMENT_ACCESS_SELECT ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(Oid relationId, ShardPlacementAccessType
										 accessType)
{
	DistTableCacheEntry *cacheEntry = NULL;
	Oid conflictingReferencingRelationId = InvalidOid;
	ShardPlacementAccessType conflictingAccessType = PLACEMENT_ACCESS_SELECT;

	if (!EnforceForeignKeyRestrictions || !FUNC2(relationId))
	{
		return;
	}

	cacheEntry = FUNC0(relationId);
	if (!(cacheEntry->partitionMethod == DISTRIBUTE_BY_HASH &&
		  cacheEntry->referencedRelationsViaForeignKey != NIL))
	{
		return;
	}

	if (MultiShardConnectionType == PARALLEL_CONNECTION &&
		FUNC1(relationId, accessType,
													&conflictingReferencingRelationId,
													&conflictingAccessType))
	{
		char *relationName = FUNC10(relationId);
		char *conflictingRelationName = FUNC10(conflictingReferencingRelationId);

		char *accessTypeText = FUNC4(accessType);
		char *conflictingAccessTypeText =
			FUNC4(conflictingAccessType);

		if (FUNC3())
		{
			/*
			 * If there has already been a parallel query executed, the sequential mode
			 * would still use the already opened parallel connections to the workers,
			 * thus contradicting our purpose of using sequential mode.
			 */
			FUNC6(ERROR, (FUNC9("cannot execute parallel %s on relation \"%s\" "
								   "after %s command on reference relation "
								   "\"%s\" because there is a foreign key between "
								   "them and \"%s\" has been accessed in this transaction",
								   accessTypeText, relationName,
								   conflictingAccessTypeText, conflictingRelationName,
								   conflictingRelationName),
							FUNC7("When there is a foreign key to a reference "
									  "table, Citus needs to perform all operations "
									  "over a single connection per node to ensure "
									  "consistency."),
							FUNC8("Try re-running the transaction with "
									"\"SET LOCAL citus.multi_shard_modify_mode TO "
									"\'sequential\';\"")));
		}
		else
		{
			FUNC6(DEBUG1, (FUNC9("switching to sequential query execution mode"),
							 FUNC7("cannot execute parallel %s on relation \"%s\" "
									   "after %s command on reference relation "
									   "\"%s\" because there is a foreign key between "
									   "them and \"%s\" has been accessed in this transaction",
									   accessTypeText, relationName,
									   conflictingAccessTypeText, conflictingRelationName,
									   conflictingRelationName)));

			FUNC5();
		}
	}
}