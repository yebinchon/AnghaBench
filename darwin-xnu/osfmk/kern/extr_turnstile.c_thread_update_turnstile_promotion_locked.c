
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct turnstile {int ts_priority; int ts_inheritor_links; } ;
typedef int boolean_t ;
struct TYPE_5__ {int inheritor_queue; } ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int,int,int ) ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int TURNSTILE_MOVED_IN_THREAD_HEAP ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct turnstile*) ;
 int priority_queue_entry_key (int *,int *) ;
 int thread_recompute_user_promotion_locked (TYPE_1__*) ;
 int thread_tid (TYPE_1__*) ;
 int turnstile_priority_queue_update_entry_key (int *,int *,int) ;

__attribute__((used)) static boolean_t
thread_update_turnstile_promotion_locked(
 thread_t thread,
 struct turnstile *turnstile)
{
 int turnstile_link_priority = priority_queue_entry_key(&(thread->inheritor_queue),
     &(turnstile->ts_inheritor_links));

 if (turnstile->ts_priority != turnstile_link_priority) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_MOVED_IN_THREAD_HEAP))) | DBG_FUNC_NONE,
   thread_tid(thread),
   VM_KERNEL_UNSLIDE_OR_PERM(turnstile),
   turnstile->ts_priority,
   turnstile_link_priority, 0);
 }

 if (!turnstile_priority_queue_update_entry_key(&thread->inheritor_queue,
   &turnstile->ts_inheritor_links, turnstile->ts_priority)) {
  return FALSE;
 }


 return thread_recompute_user_promotion_locked(thread);
}
