
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef TYPE_2__* thread_call_group_t ;
typedef int queue_head_t ;
typedef int boolean_t ;
struct TYPE_7__ {int pending_count; int pending_queue; int * delayed_queues; } ;
struct TYPE_6__ {int tc_finish_count; } ;


 int CE (TYPE_1__*) ;
 size_t TCF_ABSOLUTE ;
 size_t TCF_CONTINUOUS ;
 int assert (int) ;
 int * call_entry_dequeue (int ) ;

__attribute__((used)) static __inline__ boolean_t
_call_dequeue(
 thread_call_t call,
 thread_call_group_t group)
{
 queue_head_t *old_queue;

 old_queue = call_entry_dequeue(CE(call));

 if (old_queue != ((void*)0)) {
  assert(old_queue == &group->pending_queue ||
         old_queue == &group->delayed_queues[TCF_ABSOLUTE] ||
         old_queue == &group->delayed_queues[TCF_CONTINUOUS]);

  call->tc_finish_count++;
  if (old_queue == &group->pending_queue)
   group->pending_count--;
 }

 return (old_queue != ((void*)0));
}
