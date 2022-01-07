
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* sched_group_t ;
typedef int integer_t ;
typedef int * group_runq_t ;
typedef int entry_queue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int runq; } ;
struct TYPE_7__ {int runq; } ;


 scalar_t__ FALSE ;
 int PROCESSOR_NULL ;
 int entry_queue_remove_entry (int ,int ) ;
 int group_entry_for_pri (TYPE_2__*,int ) ;
 TYPE_1__* group_run_queue_dequeue_thread (int *,int *,scalar_t__*) ;

__attribute__((used)) static thread_t
sched_group_dequeue_thread(
                           entry_queue_t main_entryq,
                           sched_group_t group)
{
 group_runq_t group_runq = &group->runq;
 boolean_t pri_level_empty = FALSE;
 thread_t thread;
 integer_t thread_pri;

 thread = group_run_queue_dequeue_thread(group_runq, &thread_pri, &pri_level_empty);

 thread->runq = PROCESSOR_NULL;

 if (pri_level_empty) {
  entry_queue_remove_entry(main_entryq, group_entry_for_pri(group, thread_pri));
 }

 return thread;
}
