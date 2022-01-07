
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* thread_call_t ;
typedef TYPE_2__* thread_call_group_t ;
typedef size_t thread_call_flavor_t ;
typedef int queue_head_t ;
typedef int boolean_t ;
struct TYPE_8__ {int * delayed_queues; int pending_count; int pending_queue; } ;
struct TYPE_7__ {int tc_flags; int tc_submit_count; int tc_deadline; } ;


 int CE (TYPE_1__*) ;
 int FALSE ;
 size_t TCF_ABSOLUTE ;
 size_t TCF_CONTINUOUS ;
 int THREAD_CALL_ONCE ;
 int THREAD_CALL_RESCHEDULE ;
 int THREAD_CALL_RUNNING ;
 int TRUE ;
 int * call_entry_enqueue_deadline (int ,int *,int ) ;
 int panic (char*,TYPE_1__*,int *) ;

__attribute__((used)) static boolean_t
_delayed_call_enqueue(
 thread_call_t call,
 thread_call_group_t group,
 uint64_t deadline,
 thread_call_flavor_t flavor)
{
 if ((THREAD_CALL_ONCE | THREAD_CALL_RUNNING)
   == (call->tc_flags & (THREAD_CALL_ONCE | THREAD_CALL_RUNNING))) {
  call->tc_deadline = deadline;

  uint32_t flags = call->tc_flags;
  call->tc_flags |= THREAD_CALL_RESCHEDULE;

  if ((flags & THREAD_CALL_RESCHEDULE) != 0)
   return (TRUE);
  else
   return (FALSE);
 }

 queue_head_t *old_queue = call_entry_enqueue_deadline(CE(call),
                                                       &group->delayed_queues[flavor],
                                                       deadline);

 if (old_queue == &group->pending_queue) {
  group->pending_count--;
 } else if (old_queue == ((void*)0)) {
  call->tc_submit_count++;
 } else if (old_queue == &group->delayed_queues[TCF_ABSOLUTE] ||
            old_queue == &group->delayed_queues[TCF_CONTINUOUS]) {


 } else {
  panic("tried to move a thread call (%p) between groups (old_queue: %p)", call, old_queue);
 }

 return (old_queue != ((void*)0));
}
