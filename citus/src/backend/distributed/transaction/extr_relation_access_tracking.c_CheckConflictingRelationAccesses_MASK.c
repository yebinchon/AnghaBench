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
struct TYPE_3__ {scalar_t__ partitionMethod; scalar_t__ referencingRelationsViaForeignKey; } ;
typedef  scalar_t__ ShardPlacementAccessType ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ DISTRIBUTE_BY_NONE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EnforceForeignKeyRestrictions ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MultiShardConnectionType ; 
 scalar_t__ NIL ; 
 scalar_t__ PARALLEL_CONNECTION ; 
 scalar_t__ PLACEMENT_ACCESS_SELECT ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(Oid relationId, ShardPlacementAccessType accessType)
{
	DistTableCacheEntry *cacheEntry = NULL;
	Oid conflictingReferencingRelationId = InvalidOid;
	ShardPlacementAccessType conflictingAccessType = PLACEMENT_ACCESS_SELECT;

	if (!EnforceForeignKeyRestrictions || !FUNC2(relationId))
	{
		return;
	}

	cacheEntry = FUNC0(relationId);

	if (!(cacheEntry->partitionMethod == DISTRIBUTE_BY_NONE &&
		  cacheEntry->referencingRelationsViaForeignKey != NIL))
	{
		return;
	}

	if (FUNC1(relationId, accessType,
													 &conflictingReferencingRelationId,
													 &conflictingAccessType))
	{
		char *relationName = FUNC10(relationId);
		char *conflictingRelationName = FUNC10(conflictingReferencingRelationId);

		char *accessTypeText = FUNC4(accessType);
		char *conflictingAccessTypeText =
			FUNC4(conflictingAccessType);

		FUNC6(ERROR, (FUNC9("cannot execute %s on reference relation \"%s\" because "
							   "there was a parallel %s access to distributed relation "
							   "\"%s\" in the same transaction",
							   accessTypeText, relationName, conflictingAccessTypeText,
							   conflictingRelationName),
						FUNC8("Try re-running the transaction with "
								"\"SET LOCAL citus.multi_shard_modify_mode TO "
								"\'sequential\';\"")));
	}
	else if (cacheEntry->referencingRelationsViaForeignKey != NIL &&
			 accessType > PLACEMENT_ACCESS_SELECT)
	{
		char *relationName = FUNC10(relationId);

		if (FUNC3())
		{
			/*
			 * If there has already been a parallel query executed, the sequential mode
			 * would still use the already opened parallel connections to the workers,
			 * thus contradicting our purpose of using sequential mode.
			 */
			FUNC6(ERROR, (FUNC9("cannot modify reference table \"%s\" because there "
								   "was a parallel operation on a distributed table",
								   relationName),
							FUNC7("When there is a foreign key to a reference "
									  "table, Citus needs to perform all operations "
									  "over a single connection per node to ensure "
									  "consistency."),
							FUNC8("Try re-running the transaction with "
									"\"SET LOCAL citus.multi_shard_modify_mode TO "
									"\'sequential\';\"")));
		}
		else if (MultiShardConnectionType == PARALLEL_CONNECTION)
		{
			/*
			 * We can still continue with multi-shard queries in sequential mode, so
			 * set it.
			 */
			FUNC6(DEBUG1, (FUNC9("switching to sequential query execution mode"),
							 FUNC7(
								 "Reference relation \"%s\" is modified, which might lead "
								 "to data inconsistencies or distributed deadlocks via "
								 "parallel accesses to hash distributed relations due to "
								 "foreign keys. Any parallel modification to "
								 "those hash distributed relations in the same "
								 "transaction can only be executed in sequential query "
								 "execution mode", relationName)));

			/*
			 * Switching to sequential mode is admittedly confusing and, could be useless
			 * and less performant in some cases. However, if we do not switch to
			 * sequential mode at this point, we'd loose the opportunity to do so
			 * later when a parallel query is executed on the hash distributed relations
			 * that are referencing this reference table.
			 */
			FUNC5();
		}
	}
}