
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int task_t ;
typedef int * purgeable_q_t ;


 int NUM_VOLATILE_GROUPS ;
 size_t PURGEABLE_Q_TYPE_FIFO ;
 size_t PURGEABLE_Q_TYPE_LIFO ;
 size_t PURGEABLE_Q_TYPE_OBSOLETE ;
 int * purgeable_queues ;
 scalar_t__ vm_purgeable_queue_purge_task_owned (int *,int,int ) ;

uint64_t
vm_purgeable_purge_task_owned(
 task_t task)
{
 purgeable_q_t queue = ((void*)0);
 int group = 0;
 uint64_t num_pages_purged = 0;

 num_pages_purged = 0;

 queue = &purgeable_queues[PURGEABLE_Q_TYPE_OBSOLETE];
 num_pages_purged += vm_purgeable_queue_purge_task_owned(queue,
          0,
          task);

 queue = &purgeable_queues[PURGEABLE_Q_TYPE_FIFO];
 for (group = 0; group < NUM_VOLATILE_GROUPS; group++)
  num_pages_purged += vm_purgeable_queue_purge_task_owned(queue,
           group,
           task);

 queue = &purgeable_queues[PURGEABLE_Q_TYPE_LIFO];
 for (group = 0; group < NUM_VOLATILE_GROUPS; group++)
  num_pages_purged += vm_purgeable_queue_purge_task_owned(queue,
           group,
           task);

 return num_pages_purged;
}
