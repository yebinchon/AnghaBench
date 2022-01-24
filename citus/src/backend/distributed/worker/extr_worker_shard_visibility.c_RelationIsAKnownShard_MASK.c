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
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (char**,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int FUNC2 () ; 
 scalar_t__ INVALID_SHARD_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 char RELKIND_INDEX ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC14(Oid shardRelationId, bool onlySearchPath)
{
	int localGroupId = -1;
	char *shardRelationName = NULL;
	char *generatedRelationName = NULL;
	bool missingOk = true;
	uint64 shardId = INVALID_SHARD_ID;
	Oid relationId = InvalidOid;
	char relKind = '\0';
	Relation relation = NULL;

	if (!FUNC5(shardRelationId))
	{
		/* we cannot continue without a valid Oid */
		return false;
	}

	localGroupId = FUNC2();
	if (localGroupId == 0)
	{
		bool coordinatorIsKnown = false;
		FUNC6(0, &coordinatorIsKnown);

		if (!coordinatorIsKnown)
		{
			/*
			 * We're not interested in shards in the coordinator
			 * or non-mx worker nodes, unless the coordinator is
			 * in pg_dist_node.
			 */
			return false;
		}
	}

	relation = FUNC13(shardRelationId, AccessShareLock);
	if (relation == NULL)
	{
		return false;
	}
	FUNC11(relation, NoLock);

	/* we're not interested in the relations that are not in the search path */
	if (!FUNC7(shardRelationId) && onlySearchPath)
	{
		return false;
	}

	/*
	 * If the input relation is an index we simply replace the
	 * relationId with the corresponding relation to hide indexes
	 * as well.
	 */
	relKind = FUNC10(shardRelationId);
	if (relKind == RELKIND_INDEX)
	{
		shardRelationId = FUNC3(shardRelationId, false);
	}

	/* get the shard's relation name */
	shardRelationName = FUNC8(shardRelationId);

	shardId = FUNC1(shardRelationName, missingOk);
	if (shardId == INVALID_SHARD_ID)
	{
		/*
		 * The format of the table name does not align with
		 * our shard name definition.
		 */
		return false;
	}

	/* try to get the relation id */
	relationId = FUNC4(shardId, true);
	if (!FUNC5(relationId))
	{
		/* there is no such relation */
		return false;
	}

	/* verify that their namespaces are the same */
	if (FUNC9(shardRelationId) != FUNC9(relationId))
	{
		return false;
	}

	/*
	 * Now get the relation name and append the shardId to it. We need
	 * to do that because otherwise a local table with a valid shardId
	 * appended to its name could be misleading.
	 */
	generatedRelationName = FUNC8(relationId);
	FUNC0(&generatedRelationName, shardId);
	if (FUNC12(shardRelationName, generatedRelationName, NAMEDATALEN) == 0)
	{
		/* we found the distributed table that the input shard belongs to */
		return true;
	}

	return false;
}