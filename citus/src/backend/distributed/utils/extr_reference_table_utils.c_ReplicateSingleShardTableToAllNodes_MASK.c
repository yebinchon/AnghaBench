#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_4__ {int /*<<< orphan*/  shardId; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(Oid relationId)
{
	List *shardIntervalList = FUNC3(relationId);
	ShardInterval *shardInterval = (ShardInterval *) FUNC11(shardIntervalList);
	uint64 shardId = shardInterval->shardId;

	List *foreignConstraintCommandList = FUNC1(
		shardInterval);

	if (foreignConstraintCommandList != NIL || FUNC5(relationId))
	{
		char *relationName = FUNC10(relationId);
		FUNC6(ERROR, (FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC9("cannot upgrade to reference table"),
						FUNC8("Relation \"%s\" is part of a foreign constraint. "
								  "Foreign key constraints are not allowed "
								  "from or to reference tables.", relationName)));
	}

	/*
	 * ReplicateShardToAllNodes function opens separate transactions (i.e., not part
	 * of any coordinated transactions) to each worker and replicates given shard to all
	 * workers. If a worker already has a healthy replica of given shard, it skips that
	 * worker to prevent copying unnecessary data.
	 */
	FUNC4(shardInterval);

	/*
	 * We need to update metadata tables to mark this table as reference table. We modify
	 * pg_dist_partition, pg_dist_colocation and pg_dist_shard tables in
	 * ConvertToReferenceTableMetadata function.
	 */
	FUNC0(relationId, shardId);

	/*
	 * After the table has been officially marked as a reference table, we need to create
	 * the reference table itself and insert its pg_dist_partition, pg_dist_shard and
	 * existing pg_dist_placement rows.
	 */
	FUNC2(relationId);
}