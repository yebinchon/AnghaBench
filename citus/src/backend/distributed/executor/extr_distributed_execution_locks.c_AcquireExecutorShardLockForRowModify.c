
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {scalar_t__ anchorShardId; scalar_t__ replicationModel; int taskPlacementList; } ;
typedef TYPE_1__ Task ;
typedef int ShardInterval ;
typedef scalar_t__ RowModifyLevel ;
typedef scalar_t__ LOCKMODE ;


 scalar_t__ AllModificationsCommutative ;
 scalar_t__ ExclusiveLock ;
 scalar_t__ INVALID_SHARD_ID ;
 int * LoadShardInterval (scalar_t__) ;
 scalar_t__ NoLock ;
 scalar_t__ REPLICATION_MODEL_2PC ;
 scalar_t__ ROW_MODIFY_NONCOMMUTATIVE ;
 scalar_t__ ROW_MODIFY_READONLY ;
 scalar_t__ RowExclusiveLock ;
 int SerializeNonCommutativeWrites (int ,scalar_t__) ;
 int list_length (int ) ;
 int list_make1 (int *) ;

__attribute__((used)) static void
AcquireExecutorShardLockForRowModify(Task *task, RowModifyLevel modLevel)
{
 LOCKMODE lockMode = NoLock;
 int64 shardId = task->anchorShardId;

 if (shardId == INVALID_SHARD_ID)
 {
  return;
 }

 if (modLevel <= ROW_MODIFY_READONLY)
 {






  lockMode = NoLock;
 }
 else if (list_length(task->taskPlacementList) == 1)
 {
  if (task->replicationModel == REPLICATION_MODEL_2PC)
  {







   lockMode = RowExclusiveLock;
  }
  else
  {




   lockMode = NoLock;
  }
 }
 else if (AllModificationsCommutative)
 {
  lockMode = RowExclusiveLock;
 }
 else if (modLevel < ROW_MODIFY_NONCOMMUTATIVE)
 {
  lockMode = RowExclusiveLock;
 }
 else
 {
  lockMode = ExclusiveLock;
 }

 if (lockMode != NoLock)
 {
  ShardInterval *shardInterval = LoadShardInterval(shardId);

  SerializeNonCommutativeWrites(list_make1(shardInterval), lockMode);
 }
}
