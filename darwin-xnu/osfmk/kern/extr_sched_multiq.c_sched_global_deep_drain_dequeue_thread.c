
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* sched_group_t ;
typedef int sched_entry_t ;
typedef int integer_t ;
typedef int * group_runq_t ;
typedef TYPE_3__* entry_queue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ count; } ;
struct TYPE_11__ {int runq; } ;
struct TYPE_10__ {int runq; } ;


 scalar_t__ FALSE ;
 int PROCESSOR_NULL ;
 int assert (int) ;
 int entry_queue_first_entry (TYPE_3__*) ;
 int entry_queue_remove_entry (TYPE_3__*,int ) ;
 TYPE_2__* group_for_entry (int ) ;
 TYPE_1__* group_run_queue_dequeue_thread (int *,int *,scalar_t__*) ;

__attribute__((used)) static thread_t
sched_global_deep_drain_dequeue_thread(entry_queue_t main_entryq)
{
 boolean_t pri_level_empty = FALSE;
 sched_entry_t entry;
 group_runq_t group_runq;
 thread_t thread;
 integer_t thread_pri;
 sched_group_t group;

 assert(main_entryq->count > 0);

 entry = entry_queue_first_entry(main_entryq);

 group = group_for_entry(entry);
 group_runq = &group->runq;

 thread = group_run_queue_dequeue_thread(group_runq, &thread_pri, &pri_level_empty);

 thread->runq = PROCESSOR_NULL;

 if (pri_level_empty) {
  entry_queue_remove_entry(main_entryq, entry);
 }

 return thread;
}
