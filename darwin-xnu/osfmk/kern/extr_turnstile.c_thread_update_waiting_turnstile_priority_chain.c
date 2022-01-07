
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int turnstile_stats_update_flags_t ;
typedef int thread_t ;
struct turnstile {int ts_waitq; scalar_t__ ts_inheritor; } ;
typedef int boolean_t ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int,int,int ,int ) ;
 int THREAD_NOT_WAITING_ON_TURNSTILE ;
 int THREAD_NULL ;
 int TSU_NO_INHERITOR ;
 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_NO_TURNSTILE ;
 int TSU_THREAD_ARG ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_UPDATE_STOPPED_BY_LIMIT ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct turnstile*) ;
 int thread_deallocate_safe (int ) ;
 struct turnstile* thread_get_waiting_turnstile (int ) ;
 int thread_lock (int ) ;
 int thread_reference (int ) ;
 int thread_tid (int ) ;
 int thread_unlock (int ) ;
 int turnstile_deallocate_safe (struct turnstile*) ;
 scalar_t__ turnstile_get_gencount (struct turnstile*) ;
 int turnstile_max_hop ;
 int turnstile_need_thread_promotion_update (struct turnstile*,int ) ;
 int turnstile_reference (struct turnstile*) ;
 int turnstile_stats_update (int,int,int ) ;
 int turnstile_update_thread_promotion_locked (struct turnstile*,int ) ;
 int waitq_lock (int *) ;
 int waitq_unlock (int *) ;

__attribute__((used)) static void
thread_update_waiting_turnstile_priority_chain(
 thread_t *in_thread,
 struct turnstile **out_turnstile,
 int thread_hop,
 int total_hop,
 turnstile_stats_update_flags_t tsu_flags)
{
 boolean_t needs_update = FALSE;
 thread_t thread = *in_thread;
 struct turnstile *waiting_turnstile = TURNSTILE_NULL;
 uint32_t turnstile_gencount;
 boolean_t first_update = !total_hop;

 *in_thread = THREAD_NULL;


 waiting_turnstile = thread_get_waiting_turnstile(thread);

 if (waiting_turnstile == TURNSTILE_NULL || thread_hop > turnstile_max_hop) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS,
    (waiting_turnstile ? TURNSTILE_UPDATE_STOPPED_BY_LIMIT : THREAD_NOT_WAITING_ON_TURNSTILE)
   )) | DBG_FUNC_NONE,
   thread_tid(thread),
   turnstile_max_hop,
   thread_hop,
   VM_KERNEL_UNSLIDE_OR_PERM(waiting_turnstile), 0);
  turnstile_stats_update(total_hop + 1, TSU_NO_TURNSTILE |
   TSU_THREAD_ARG | tsu_flags, thread);
  thread_unlock(thread);
  return;
 }


 needs_update = turnstile_need_thread_promotion_update(waiting_turnstile, thread);
 if (!needs_update && !first_update) {
  turnstile_stats_update(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
   TSU_THREAD_ARG | tsu_flags, thread);
  thread_unlock(thread);
  return;
 }


 turnstile_gencount = turnstile_get_gencount(waiting_turnstile);
 turnstile_reference(waiting_turnstile);
 thread_reference(thread);


 thread_unlock(thread);
 waitq_lock(&waiting_turnstile->ts_waitq);
 thread_lock(thread);


 if (turnstile_gencount != turnstile_get_gencount(waiting_turnstile) ||
     waiting_turnstile != thread_get_waiting_turnstile(thread)) {
  turnstile_stats_update(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
   TSU_THREAD_ARG | tsu_flags, thread);

  thread_unlock(thread);
  waitq_unlock(&waiting_turnstile->ts_waitq);
  thread_deallocate_safe(thread);
  turnstile_deallocate_safe(waiting_turnstile);
  return;
 }






 thread_deallocate_safe(thread);
 turnstile_deallocate_safe(waiting_turnstile);


 needs_update = turnstile_update_thread_promotion_locked(waiting_turnstile, thread);
 if (!needs_update && !first_update) {
  turnstile_stats_update(total_hop + 1,
   (waiting_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
   TSU_THREAD_ARG | tsu_flags, thread);
  thread_unlock(thread);
  waitq_unlock(&waiting_turnstile->ts_waitq);
  return;
 }


 thread_unlock(thread);
 *out_turnstile = waiting_turnstile;
}
