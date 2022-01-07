
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint32 ;


 double ActiveReadableWorkerNodeCount () ;
 double MaxRunningTasksPerNode ;
 int rint (double) ;

__attribute__((used)) static uint32
HashPartitionCount(void)
{
 uint32 groupCount = ActiveReadableWorkerNodeCount();
 double maxReduceTasksPerNode = MaxRunningTasksPerNode / 2.0;

 uint32 partitionCount = (uint32) rint(groupCount * maxReduceTasksPerNode);
 return partitionCount;
}
