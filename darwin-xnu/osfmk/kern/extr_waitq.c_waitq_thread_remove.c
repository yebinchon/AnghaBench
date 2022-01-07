
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct waitq {int waitq_prio_queue; } ;
struct TYPE_4__ {int wait_links; int wait_prioq_links; } ;


 int DBG_FUNC_NONE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ;
 int THREAD_REMOVED_FROM_TURNSTILE_WAITQ ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int VM_KERNEL_UNSLIDE_OR_PERM (int ) ;
 int priority_queue_remove (int *,int *,int ) ;
 int remqueue (int *) ;
 int thread_tid (TYPE_1__*) ;
 scalar_t__ waitq_is_turnstile_queue (struct waitq*) ;
 int waitq_to_turnstile (struct waitq*) ;

__attribute__((used)) static inline void waitq_thread_remove(struct waitq *wq,
                                       thread_t thread)
{
 if (waitq_is_turnstile_queue(wq)) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (THREAD_REMOVED_FROM_TURNSTILE_WAITQ))) | DBG_FUNC_NONE,
   VM_KERNEL_UNSLIDE_OR_PERM(waitq_to_turnstile(wq)),
   thread_tid(thread),
   0, 0, 0);
  priority_queue_remove(&wq->waitq_prio_queue, &thread->wait_prioq_links,
    PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE);
 } else {
  remqueue(&(thread->wait_links));
 }
}
