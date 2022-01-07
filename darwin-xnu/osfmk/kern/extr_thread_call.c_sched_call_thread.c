
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef TYPE_3__* thread_call_group_t ;
struct TYPE_9__ {int active_count; int blocked_count; int pending_count; } ;
struct TYPE_7__ {TYPE_3__* thc_group; } ;
struct TYPE_8__ {TYPE_1__ thc_state; } ;




 int THREAD_CALL_INDEX_MAX ;
 int assert (int) ;
 TYPE_3__* thread_call_groups ;
 int thread_call_lock_spin () ;
 int thread_call_unlock () ;
 int thread_call_wake (TYPE_3__*) ;

__attribute__((used)) static void
sched_call_thread(
  int type,
  thread_t thread)
{
 thread_call_group_t group;

 group = thread->thc_state.thc_group;
 assert((group - &thread_call_groups[0]) < THREAD_CALL_INDEX_MAX);

 thread_call_lock_spin();

 switch (type) {

  case 129:
   assert(group->active_count);
   --group->active_count;
   group->blocked_count++;
   if (group->pending_count > 0)
    thread_call_wake(group);
   break;

  case 128:
   assert(group->blocked_count);
   --group->blocked_count;
   group->active_count++;
   break;
 }

 thread_call_unlock();
}
