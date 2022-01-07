
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LWLockRelease (int ) ;
 int LockHashPartitionLockByIndex (int) ;
 int NUM_LOCK_PARTITIONS ;
 int UnlockBackendSharedMemory () ;

__attribute__((used)) static void
UnlockLockData(void)
{
 int partitionNum = 0;

 for (partitionNum = NUM_LOCK_PARTITIONS - 1; partitionNum >= 0; partitionNum--)
 {
  LWLockRelease(LockHashPartitionLockByIndex(partitionNum));
 }

 UnlockBackendSharedMemory();
}
