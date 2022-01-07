
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int waitq_fifo; int waitq_irq; int waitq_turnstile_or_port; int waitq_isvalid; int waitq_queue; int waitq_prio_queue; scalar_t__ waitq_prepost_id; scalar_t__ waitq_set_id; scalar_t__ waitq_eventmask; int waitq_type; scalar_t__ waitq_prepost; } ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int PRIORITY_QUEUE_BUILTIN_MAX_HEAP ;
 int SYNC_POLICY_DISABLE_IRQ ;
 int SYNC_POLICY_FIXED_PRIORITY ;
 int SYNC_POLICY_REVERSED ;
 int SYNC_POLICY_TURNSTILE ;
 int WQT_QUEUE ;
 int assert (int) ;
 int priority_queue_init (int *,int ) ;
 int queue_init (int *) ;
 scalar_t__ waitq_is_turnstile_queue (struct waitq*) ;
 int waitq_lock_init (struct waitq*) ;

kern_return_t waitq_init(struct waitq *waitq, int policy)
{
 assert(waitq != ((void*)0));


 if ((policy & SYNC_POLICY_FIXED_PRIORITY) != 0)
  return KERN_INVALID_ARGUMENT;

 waitq->waitq_fifo = ((policy & SYNC_POLICY_REVERSED) == 0);
 waitq->waitq_irq = !!(policy & SYNC_POLICY_DISABLE_IRQ);
 waitq->waitq_prepost = 0;
 waitq->waitq_type = WQT_QUEUE;
 waitq->waitq_turnstile_or_port = !!(policy & SYNC_POLICY_TURNSTILE);
 waitq->waitq_eventmask = 0;

 waitq->waitq_set_id = 0;
 waitq->waitq_prepost_id = 0;

 waitq_lock_init(waitq);
 if (waitq_is_turnstile_queue(waitq)) {

  priority_queue_init(&waitq->waitq_prio_queue,
    PRIORITY_QUEUE_BUILTIN_MAX_HEAP);
  assert(waitq->waitq_fifo == 0);
 } else {
  queue_init(&waitq->waitq_queue);
 }

 waitq->waitq_isvalid = 1;
 return KERN_SUCCESS;
}
