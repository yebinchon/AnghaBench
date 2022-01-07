
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LWLockAcquire (int ,int ) ;
 int LW_SHARED ;
 int LockBackendSharedMemory (int ) ;
 int LockHashPartitionLockByIndex (int) ;
 int NUM_LOCK_PARTITIONS ;

__attribute__((used)) static void
LockLockData(void)
{
 int partitionNum = 0;

 LockBackendSharedMemory(LW_SHARED);

 for (partitionNum = 0; partitionNum < NUM_LOCK_PARTITIONS; partitionNum++)
 {
  LWLockAcquire(LockHashPartitionLockByIndex(partitionNum), LW_SHARED);
 }
}
