
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerTasksSharedStateData ;
typedef int Size ;


 int MaxTrackedTasksPerNode ;
 int WORKER_TASK_SIZE ;
 int add_size (int,int) ;
 int hash_estimate_size (int ,int ) ;

__attribute__((used)) static Size
TaskTrackerShmemSize(void)
{
 Size size = 0;
 Size hashSize = 0;

 size = add_size(size, sizeof(WorkerTasksSharedStateData));

 hashSize = hash_estimate_size(MaxTrackedTasksPerNode, WORKER_TASK_SIZE);
 size = add_size(size, hashSize);

 return size;
}
