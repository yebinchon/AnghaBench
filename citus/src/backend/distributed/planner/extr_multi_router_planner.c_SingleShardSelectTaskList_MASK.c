#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64 ;
struct TYPE_7__ {int /*<<< orphan*/ * relationRowLockList; int /*<<< orphan*/ * relationShardList; int /*<<< orphan*/ * taskPlacementList; void* jobId; void* anchorShardId; int /*<<< orphan*/  queryString; } ;
typedef  TYPE_1__ Task ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  ROUTER_TASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static List *
FUNC5(Query *query, uint64 jobId, List *relationShardList,
						  List *placementList,
						  uint64 shardId)
{
	Task *task = FUNC0(ROUTER_TASK);
	StringInfo queryString = FUNC3();
	List *relationRowLockList = NIL;

	FUNC1((Node *) query, &relationRowLockList);
	FUNC4(query, queryString);

	task->queryString = queryString->data;
	task->anchorShardId = shardId;
	task->jobId = jobId;
	task->taskPlacementList = placementList;
	task->relationShardList = relationShardList;
	task->relationRowLockList = relationRowLockList;

	return FUNC2(task);
}