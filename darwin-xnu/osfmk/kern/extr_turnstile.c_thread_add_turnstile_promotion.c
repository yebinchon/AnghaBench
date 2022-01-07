
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct turnstile {int ts_priority; int ts_inheritor_links; } ;
typedef int boolean_t ;
struct TYPE_8__ {int inheritor_queue; } ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ;
 int TSU_BOOST_ARG ;
 int TSU_TURNSTILE_ARG ;
 int TURNSTILE_ADDED_TO_THREAD_HEAP ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct turnstile*) ;
 int priority_queue_entry_init (int *) ;
 scalar_t__ priority_queue_insert (int *,int *,int ,int ) ;
 int thread_get_update_flags_for_turnstile_propagation_stoppage (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_recompute_user_promotion_locked (TYPE_1__*) ;
 int thread_tid (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 int turnstile_stats_update (int,int,struct turnstile*) ;

__attribute__((used)) static boolean_t
thread_add_turnstile_promotion(
 thread_t thread,
 struct turnstile *turnstile)
{
 boolean_t needs_update = FALSE;


 thread_lock(thread);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_ADDED_TO_THREAD_HEAP))) | DBG_FUNC_NONE,
  thread_tid(thread),
  VM_KERNEL_UNSLIDE_OR_PERM(turnstile),
  turnstile->ts_priority, 0, 0);

 priority_queue_entry_init(&(turnstile->ts_inheritor_links));
 if (priority_queue_insert(&thread->inheritor_queue,
   &turnstile->ts_inheritor_links, turnstile->ts_priority,
   PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {

  needs_update = thread_recompute_user_promotion_locked(thread);
 }


 if (!needs_update) {
  turnstile_stats_update(1,
   thread_get_update_flags_for_turnstile_propagation_stoppage(thread) |
   TSU_TURNSTILE_ARG | TSU_BOOST_ARG,
   turnstile);
 }

 thread_unlock(thread);
 return needs_update;
}
