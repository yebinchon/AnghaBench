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
struct ReindexIndexCallbackState {int concurrent; void* locked_table_oid; } ;
struct TYPE_12__ {int /*<<< orphan*/ * schemaname; } ;
struct TYPE_11__ {int concurrentIndexCmd; char const* commandString; int /*<<< orphan*/  taskList; void* targetRelationId; } ;
struct TYPE_10__ {int concurrent; scalar_t__ kind; TYPE_5__* relation; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ ReindexStmt ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_2__ DDLJob ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*) ; 
 void* FUNC3 (void*,int) ; 
 void* InvalidOid ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ REINDEX_OBJECT_INDEX ; 
 scalar_t__ REINDEX_OBJECT_TABLE ; 
 int /*<<< orphan*/  RangeVarCallbackForReindexIndex ; 
 int /*<<< orphan*/  RangeVarCallbackOwnsTable ; 
 void* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ReindexIndexCallbackState*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (int) ; 

List *
FUNC16(ReindexStmt *reindexStatement, const char *reindexCommand)
{
	List *ddlJobs = NIL;

	/*
	 * We first check whether a distributed relation is affected. For that, we need to
	 * open the relation. To prevent race conditions with later lookups, lock the table,
	 * and modify the rangevar to include the schema.
	 */
	if (reindexStatement->relation != NULL)
	{
		Relation relation = NULL;
		Oid relationId = InvalidOid;
		bool isDistributedRelation = false;
#if PG_VERSION_NUM >= 120000
		LOCKMODE lockmode = reindexStatement->concurrent ? ShareUpdateExclusiveLock :
							AccessExclusiveLock;
#else
		LOCKMODE lockmode = AccessExclusiveLock;
#endif
		MemoryContext relationContext = NULL;

		FUNC0(reindexStatement->kind == REINDEX_OBJECT_INDEX ||
			   reindexStatement->kind == REINDEX_OBJECT_TABLE);

		if (reindexStatement->kind == REINDEX_OBJECT_INDEX)
		{
			Oid indOid;
			struct ReindexIndexCallbackState state;
#if PG_VERSION_NUM >= 120000
			state.concurrent = reindexStatement->concurrent;
#endif
			state.locked_table_oid = InvalidOid;

			indOid = FUNC6(reindexStatement->relation,
											  lockmode, 0,
											  RangeVarCallbackForReindexIndex,
											  &state);
			relation = FUNC13(indOid, NoLock);
			relationId = FUNC3(indOid, false);
		}
		else
		{
			FUNC6(reindexStatement->relation, lockmode, 0,
									 RangeVarCallbackOwnsTable, NULL);

			relation = FUNC11(reindexStatement->relation, NoLock);
			relationId = FUNC8(relation);
		}

		isDistributedRelation = FUNC4(relationId);

		if (reindexStatement->relation->schemaname == NULL)
		{
			/*
			 * Before we do any further processing, fix the schema name to make sure
			 * that a (distributed) table with the same name does not appear on the
			 * search path in front of the current schema. We do this even if the
			 * table is not distributed, since a distributed table may appear on the
			 * search path by the time postgres starts processing this statement.
			 */
			char *namespaceName = FUNC9(FUNC7(relation));

			/* ensure we copy string into proper context */
			relationContext = FUNC2(reindexStatement->relation);
			reindexStatement->relation->schemaname = FUNC5(relationContext,
																		 namespaceName);
		}

		if (reindexStatement->kind == REINDEX_OBJECT_INDEX)
		{
			FUNC12(relation, NoLock);
		}
		else
		{
			FUNC10(relation, NoLock);
		}

		if (isDistributedRelation)
		{
			DDLJob *ddlJob = FUNC15(sizeof(DDLJob));
			ddlJob->targetRelationId = relationId;
#if PG_VERSION_NUM >= 120000
			ddlJob->concurrentIndexCmd = reindexStatement->concurrent;
#else
			ddlJob->concurrentIndexCmd = false;
#endif
			ddlJob->commandString = reindexCommand;
			ddlJob->taskList = FUNC1(relationId, reindexStatement);

			ddlJobs = FUNC14(ddlJob);
		}
	}

	return ddlJobs;
}