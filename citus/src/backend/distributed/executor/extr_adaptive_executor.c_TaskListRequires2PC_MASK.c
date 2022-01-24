#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_2__ {scalar_t__ replicationModel; scalar_t__ anchorShardId; scalar_t__ taskType; } ;
typedef  TYPE_1__ Task ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ COMMIT_PROTOCOL_2PC ; 
 scalar_t__ DDL_TASK ; 
 scalar_t__ INVALID_SHARD_ID ; 
 scalar_t__ MultiShardCommitProtocol ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ REPLICATION_MODEL_2PC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(List *taskList)
{
	Task *task = NULL;
	bool multipleTasks = false;
	uint64 anchorShardId = INVALID_SHARD_ID;

	if (taskList == NIL)
	{
		return false;
	}

	task = (Task *) FUNC2(taskList);
	if (task->replicationModel == REPLICATION_MODEL_2PC)
	{
		return true;
	}

	/*
	 * Some tasks don't set replicationModel thus we rely on
	 * the anchorShardId as well replicationModel.
	 *
	 * TODO: Do we ever need replicationModel in the Task structure?
	 * Can't we always rely on anchorShardId?
	 */
	anchorShardId = task->anchorShardId;
	if (anchorShardId != INVALID_SHARD_ID && FUNC1(anchorShardId))
	{
		return true;
	}

	multipleTasks = FUNC3(taskList) > 1;
	if (!FUNC0(task->taskType) &&
		multipleTasks && MultiShardCommitProtocol == COMMIT_PROTOCOL_2PC)
	{
		return true;
	}

	if (task->taskType == DDL_TASK)
	{
		if (MultiShardCommitProtocol == COMMIT_PROTOCOL_2PC ||
			task->replicationModel == REPLICATION_MODEL_2PC)
		{
			return true;
		}
	}

	return false;
}