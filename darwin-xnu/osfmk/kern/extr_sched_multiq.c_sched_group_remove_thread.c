
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* sched_group_t ;
typedef int sched_entry_t ;
typedef int integer_t ;
typedef int entry_queue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int runq; } ;
struct TYPE_10__ {int sched_pri; } ;


 int entry_queue_check_entry (int ,int ,int ) ;
 int entry_queue_remove_entry (int ,int ) ;
 int global_check_entry_queue (int ) ;
 int group_check_run_queue (int ,TYPE_2__*) ;
 int group_entry_for_pri (TYPE_2__*,int ) ;
 scalar_t__ group_run_queue_remove_thread (int *,TYPE_1__*,int ) ;
 scalar_t__ multiq_sanity_check ;
 int sched_group_check_thread (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
sched_group_remove_thread(
                          entry_queue_t main_entryq,
                          sched_group_t group,
                          thread_t thread)
{
 integer_t thread_pri = thread->sched_pri;
 sched_entry_t sched_entry = group_entry_for_pri(group, thread_pri);
 boolean_t pri_level_empty = group_run_queue_remove_thread(&group->runq, thread, thread_pri);

 if (pri_level_empty) {
  entry_queue_remove_entry(main_entryq, sched_entry);
 }







}
