
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int relationShardList; int relationRowLockList; } ;
typedef TYPE_1__ Task ;
typedef int RowModifyLevel ;


 int AcquireExecutorShardLockForRowModify (TYPE_1__*,int ) ;
 int AcquireExecutorShardLocksForRelationRowLockList (int ) ;
 int ExclusiveLock ;
 int LockRelationShardResources (int ,int ) ;
 scalar_t__ RequiresConsistentSnapshot (TYPE_1__*) ;

void
AcquireExecutorShardLocks(Task *task, RowModifyLevel modLevel)
{
 AcquireExecutorShardLockForRowModify(task, modLevel);
 AcquireExecutorShardLocksForRelationRowLockList(task->relationRowLockList);







 if (RequiresConsistentSnapshot(task))
 {






  LockRelationShardResources(task->relationShardList, ExclusiveLock);
 }
}
