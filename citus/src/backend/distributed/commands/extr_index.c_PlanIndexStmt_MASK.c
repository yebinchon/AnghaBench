#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* schemaname; } ;
struct TYPE_11__ {char const* commandString; int /*<<< orphan*/  taskList; scalar_t__ concurrentIndexCmd; int /*<<< orphan*/  targetRelationId; } ;
struct TYPE_10__ {char* idxname; scalar_t__ concurrent; TYPE_5__* relation; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_1__ IndexStmt ;
typedef  TYPE_2__ DDLJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int) ; 

List *
FUNC15(IndexStmt *createIndexStatement, const char *createIndexCommand)
{
	List *ddlJobs = NIL;

	/*
	 * We first check whether a distributed relation is affected. For that, we need to
	 * open the relation. To prevent race conditions with later lookups, lock the table,
	 * and modify the rangevar to include the schema.
	 */
	if (createIndexStatement->relation != NULL)
	{
		Relation relation = NULL;
		Oid relationId = InvalidOid;
		bool isDistributedRelation = false;
		LOCKMODE lockmode = ShareLock;
		MemoryContext relationContext = NULL;

		/*
		 * We don't support concurrently creating indexes for distributed
		 * tables, but till this point, we don't know if it is a regular or a
		 * distributed table.
		 */
		if (createIndexStatement->concurrent)
		{
			lockmode = ShareUpdateExclusiveLock;
		}

		/*
		 * XXX: Consider using RangeVarGetRelidExtended with a permission
		 * checking callback. Right now we'll acquire the lock before having
		 * checked permissions, and will only fail when executing the actual
		 * index statements.
		 */
		relation = FUNC12(createIndexStatement->relation, lockmode);
		relationId = FUNC7(relation);

		isDistributedRelation = FUNC3(relationId);

		if (createIndexStatement->relation->schemaname == NULL)
		{
			/*
			 * Before we do any further processing, fix the schema name to make sure
			 * that a (distributed) table with the same name does not appear on the
			 * search path in front of the current schema. We do this even if the
			 * table is not distributed, since a distributed table may appear on the
			 * search path by the time postgres starts processing this statement.
			 */
			char *namespaceName = FUNC8(FUNC6(relation));

			/* ensure we copy string into proper context */
			relationContext = FUNC2(createIndexStatement->relation);
			createIndexStatement->relation->schemaname = FUNC4(
				relationContext, namespaceName);
		}

		FUNC11(relation, NoLock);

		if (isDistributedRelation)
		{
			Oid namespaceId = InvalidOid;
			Oid indexRelationId = InvalidOid;
			char *indexName = createIndexStatement->idxname;
			char *namespaceName = createIndexStatement->relation->schemaname;

			FUNC1(createIndexStatement);

			namespaceId = FUNC9(namespaceName, false);
			indexRelationId = FUNC10(indexName, namespaceId);

			/* if index does not exist, send the command to workers */
			if (!FUNC5(indexRelationId))
			{
				DDLJob *ddlJob = FUNC14(sizeof(DDLJob));
				ddlJob->targetRelationId = relationId;
				ddlJob->concurrentIndexCmd = createIndexStatement->concurrent;
				ddlJob->commandString = createIndexCommand;
				ddlJob->taskList = FUNC0(relationId, createIndexStatement);

				ddlJobs = FUNC13(ddlJob);
			}
		}
	}

	return ddlJobs;
}