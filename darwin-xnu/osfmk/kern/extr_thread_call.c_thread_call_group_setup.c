
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_call_group_t ;
struct TYPE_4__ {int idle_waitq; int dealloc_timer; int * delayed_timers; int * delayed_queues; int pending_queue; } ;


 int SYNC_POLICY_DISABLE_IRQ ;
 int SYNC_POLICY_REVERSED ;
 size_t TCF_ABSOLUTE ;
 size_t TCF_CONTINUOUS ;
 int queue_init (int *) ;
 int thread_call_dealloc_timer ;
 int thread_call_delayed_timer ;
 int timer_call_setup (int *,int ,TYPE_1__*) ;
 int waitq_init (int *,int) ;

__attribute__((used)) static void
thread_call_group_setup(thread_call_group_t group)
{
 queue_init(&group->pending_queue);
 queue_init(&group->delayed_queues[TCF_ABSOLUTE]);
 queue_init(&group->delayed_queues[TCF_CONTINUOUS]);


 timer_call_setup(&group->delayed_timers[TCF_ABSOLUTE], thread_call_delayed_timer, group);
 timer_call_setup(&group->delayed_timers[TCF_CONTINUOUS], thread_call_delayed_timer, group);
 timer_call_setup(&group->dealloc_timer, thread_call_dealloc_timer, group);


 waitq_init(&group->idle_waitq, SYNC_POLICY_REVERSED|SYNC_POLICY_DISABLE_IRQ);
}
