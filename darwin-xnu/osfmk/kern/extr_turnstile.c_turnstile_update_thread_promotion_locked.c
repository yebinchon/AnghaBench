
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct TYPE_5__ {int waitq_prio_queue; } ;
struct turnstile {TYPE_1__ ts_waitq; } ;
typedef int boolean_t ;
struct TYPE_6__ {int base_pri; int wait_prioq_links; } ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int,int,int ) ;
 int THREAD_MOVED_IN_TURNSTILE_WAITQ ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct turnstile*) ;
 int priority_queue_entry_key (int *,int *) ;
 int thread_tid (TYPE_2__*) ;
 int turnstile_priority_queue_update_entry_key (int *,int *,int) ;
 int turnstile_recompute_priority_locked (struct turnstile*) ;

__attribute__((used)) static boolean_t
turnstile_update_thread_promotion_locked(
 struct turnstile *dst_turnstile,
 thread_t thread)
{
 int thread_link_priority = priority_queue_entry_key(&(dst_turnstile->ts_waitq.waitq_prio_queue),
     &(thread->wait_prioq_links));

 if (thread->base_pri != thread_link_priority) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (THREAD_MOVED_IN_TURNSTILE_WAITQ))) | DBG_FUNC_NONE,
   VM_KERNEL_UNSLIDE_OR_PERM(dst_turnstile),
   thread_tid(thread),
   thread->base_pri,
   thread_link_priority, 0);
 }

 if (!turnstile_priority_queue_update_entry_key(
   &dst_turnstile->ts_waitq.waitq_prio_queue,
   &thread->wait_prioq_links, thread->base_pri)) {
  return FALSE;
 }


 return turnstile_recompute_priority_locked(dst_turnstile);
}
