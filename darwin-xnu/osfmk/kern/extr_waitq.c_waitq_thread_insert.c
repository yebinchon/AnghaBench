
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct waitq {int waitq_queue; int waitq_prio_queue; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int wait_links; int base_pri; int wait_prioq_links; } ;


 int DBG_FUNC_NONE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ;
 int THREAD_ADDED_TO_TURNSTILE_WAITQ ;
 int TSU_REGULAR_WAITQ_BLOCK_COUNT ;
 int TSU_TURNSTILE_BLOCK_COUNT ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int VM_KERNEL_UNSLIDE_OR_PERM (int ) ;
 int enqueue_head (int *,int *) ;
 int enqueue_tail (int *,int *) ;
 int priority_queue_entry_init (int *) ;
 int priority_queue_insert (int *,int *,int ,int ) ;
 int thread_tid (TYPE_1__*) ;
 int turnstile_stats_update (int ,int ,int *) ;
 scalar_t__ waitq_is_turnstile_queue (struct waitq*) ;
 int waitq_to_turnstile (struct waitq*) ;

__attribute__((used)) static inline void waitq_thread_insert(struct waitq *wq,
                                       thread_t thread, boolean_t fifo)
{
 if (waitq_is_turnstile_queue(wq)) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (THREAD_ADDED_TO_TURNSTILE_WAITQ))) | DBG_FUNC_NONE,
   VM_KERNEL_UNSLIDE_OR_PERM(waitq_to_turnstile(wq)),
   thread_tid(thread),
   thread->base_pri, 0, 0);

  turnstile_stats_update(0, TSU_TURNSTILE_BLOCK_COUNT, ((void*)0));
  priority_queue_entry_init(&(thread->wait_prioq_links));
  priority_queue_insert(&wq->waitq_prio_queue,
    &thread->wait_prioq_links, thread->base_pri,
    PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE);
 } else {
  turnstile_stats_update(0, TSU_REGULAR_WAITQ_BLOCK_COUNT, ((void*)0));
  if (fifo) {
   enqueue_tail(&wq->waitq_queue, &thread->wait_links);
  } else {
   enqueue_head(&wq->waitq_queue, &thread->wait_links);
  }
 }
}
