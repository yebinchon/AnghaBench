
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* sched_group_t ;
typedef int integer_t ;
typedef int entry_queue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int * entries; int runq; } ;
struct TYPE_7__ {int sched_pri; } ;


 int SCHED_HEADQ ;
 int entry_queue_change_entry (int ,int *,int) ;
 int entry_queue_enqueue_entry (int ,int *,int) ;
 int global_check_entry_queue (int ) ;
 int group_check_run_queue (int ,TYPE_2__*) ;
 scalar_t__ group_run_queue_enqueue_thread (int *,TYPE_1__*,int,int) ;
 scalar_t__ multiq_sanity_check ;

__attribute__((used)) static void
sched_group_enqueue_thread(
                           entry_queue_t main_entryq,
                           sched_group_t group,
                           thread_t thread,
                           integer_t options)
{







 int sched_pri = thread->sched_pri;

 boolean_t pri_level_was_empty = group_run_queue_enqueue_thread(&group->runq, thread, sched_pri, options);

 if (pri_level_was_empty) {




  entry_queue_enqueue_entry(main_entryq, &group->entries[sched_pri], options);
 } else if (options & SCHED_HEADQ) {

  entry_queue_change_entry(main_entryq, &group->entries[sched_pri], options);
 }
}
