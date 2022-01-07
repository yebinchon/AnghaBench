
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* timer_call_t ;
struct TYPE_12__ {int count; int earliest_soft_deadline; int head; } ;
typedef TYPE_2__ mpqueue_head_t ;
struct TYPE_13__ {int deadline; int queue; } ;
struct TYPE_11__ {int flags; int soft_deadline; } ;


 TYPE_2__* MPQUEUE (int ) ;
 int QUEUE (TYPE_2__*) ;
 TYPE_6__* TCE (TYPE_1__*) ;
 int TIMER_CALL_RATELIMITED ;
 int call_entry_enqueue_deadline (TYPE_6__*,int ,int ) ;
 int queue_first (int *) ;

__attribute__((used)) static __inline__ mpqueue_head_t *
timer_call_entry_enqueue_deadline(
 timer_call_t entry,
 mpqueue_head_t *queue,
 uint64_t deadline)
{
 mpqueue_head_t *old_queue = MPQUEUE(TCE(entry)->queue);

 call_entry_enqueue_deadline(TCE(entry), QUEUE(queue), deadline);





 timer_call_t thead = (timer_call_t)queue_first(&queue->head);
 queue->earliest_soft_deadline = thead->flags & TIMER_CALL_RATELIMITED ? TCE(thead)->deadline : thead->soft_deadline;

 if (old_queue)
  old_queue->count--;
 queue->count++;

 return old_queue;
}
