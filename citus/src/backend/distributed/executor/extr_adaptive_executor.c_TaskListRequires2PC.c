
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_2__ {scalar_t__ replicationModel; scalar_t__ anchorShardId; scalar_t__ taskType; } ;
typedef TYPE_1__ Task ;
typedef int List ;


 scalar_t__ COMMIT_PROTOCOL_2PC ;
 scalar_t__ DDL_TASK ;
 scalar_t__ INVALID_SHARD_ID ;
 scalar_t__ MultiShardCommitProtocol ;
 int * NIL ;
 scalar_t__ REPLICATION_MODEL_2PC ;
 int ReadOnlyTask (scalar_t__) ;
 scalar_t__ ReferenceTableShardId (scalar_t__) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

__attribute__((used)) static bool
TaskListRequires2PC(List *taskList)
{
 Task *task = ((void*)0);
 bool multipleTasks = 0;
 uint64 anchorShardId = INVALID_SHARD_ID;

 if (taskList == NIL)
 {
  return 0;
 }

 task = (Task *) linitial(taskList);
 if (task->replicationModel == REPLICATION_MODEL_2PC)
 {
  return 1;
 }
 anchorShardId = task->anchorShardId;
 if (anchorShardId != INVALID_SHARD_ID && ReferenceTableShardId(anchorShardId))
 {
  return 1;
 }

 multipleTasks = list_length(taskList) > 1;
 if (!ReadOnlyTask(task->taskType) &&
  multipleTasks && MultiShardCommitProtocol == COMMIT_PROTOCOL_2PC)
 {
  return 1;
 }

 if (task->taskType == DDL_TASK)
 {
  if (MultiShardCommitProtocol == COMMIT_PROTOCOL_2PC ||
   task->replicationModel == REPLICATION_MODEL_2PC)
  {
   return 1;
  }
 }

 return 0;
}
