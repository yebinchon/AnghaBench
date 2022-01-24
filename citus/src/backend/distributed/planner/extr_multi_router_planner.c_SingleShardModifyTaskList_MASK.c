#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64 ;
struct TYPE_11__ {int /*<<< orphan*/  replicationModel; int /*<<< orphan*/ * relationShardList; int /*<<< orphan*/ * taskPlacementList; void* jobId; void* anchorShardId; int /*<<< orphan*/  queryString; } ;
typedef  TYPE_1__ Task ;
struct TYPE_14__ {char partitionMethod; int /*<<< orphan*/  replicationModel; } ;
struct TYPE_13__ {int /*<<< orphan*/  relid; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_4__ DistTableCacheEntry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 char DISTRIBUTE_BY_NONE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MODIFY_TASK ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static List *
FUNC11(Query *query, uint64 jobId, List *relationShardList,
						  List *placementList, uint64 shardId)
{
	Task *task = FUNC0(MODIFY_TASK);
	StringInfo queryString = FUNC9();
	DistTableCacheEntry *modificationTableCacheEntry = NULL;
	char modificationPartitionMethod = 0;
	List *rangeTableList = NIL;
	RangeTblEntry *updateOrDeleteRTE = NULL;

	FUNC2((Node *) query, &rangeTableList);
	updateOrDeleteRTE = FUNC3(query);

	modificationTableCacheEntry = FUNC1(updateOrDeleteRTE->relid);
	modificationPartitionMethod = modificationTableCacheEntry->partitionMethod;

	if (modificationPartitionMethod == DISTRIBUTE_BY_NONE &&
		FUNC4(rangeTableList, query))
	{
		FUNC5(ERROR, (FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC7("cannot perform select on a distributed table "
							   "and modify a reference table")));
	}

	FUNC10(query, queryString);

	task->queryString = queryString->data;
	task->anchorShardId = shardId;
	task->jobId = jobId;
	task->taskPlacementList = placementList;
	task->relationShardList = relationShardList;
	task->replicationModel = modificationTableCacheEntry->replicationModel;

	return FUNC8(task);
}