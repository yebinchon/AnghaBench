
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_purgeable_info_t ;
typedef int task_t ;
typedef int * purgeable_q_t ;
struct TYPE_3__ {int obsolete_data; int * lifo_data; int * fifo_data; } ;


 int NUM_VOLATILE_GROUPS ;
 size_t PURGEABLE_Q_TYPE_FIFO ;
 size_t PURGEABLE_Q_TYPE_LIFO ;
 size_t PURGEABLE_Q_TYPE_OBSOLETE ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int * purgeable_queues ;
 int vm_purgeable_queue_lock ;
 int vm_purgeable_stats_helper (int *,int *,int,int ) ;

void
vm_purgeable_stats(vm_purgeable_info_t info, task_t target_task)
{
 purgeable_q_t queue;
 int group;

 lck_mtx_lock(&vm_purgeable_queue_lock);


 queue = &purgeable_queues[PURGEABLE_Q_TYPE_FIFO];
 for (group = 0; group < NUM_VOLATILE_GROUPS; group++)
  vm_purgeable_stats_helper(&(info->fifo_data[group]), queue, group, target_task);


 queue = &purgeable_queues[PURGEABLE_Q_TYPE_LIFO];
 for (group = 0; group < NUM_VOLATILE_GROUPS; group++)
  vm_purgeable_stats_helper(&(info->lifo_data[group]), queue, group, target_task);


 queue = &purgeable_queues[PURGEABLE_Q_TYPE_OBSOLETE];
 vm_purgeable_stats_helper(&(info->obsolete_data), queue, 0, target_task);

 lck_mtx_unlock(&vm_purgeable_queue_lock);
 return;
}
