
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int turnstile_stats_update_flags_t ;
typedef int thread_t ;
struct turnstile {int ts_inheritor_flags; int ts_waitq; int ts_inheritor; } ;
typedef int boolean_t ;


 int FALSE ;
 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_TURNSTILE_ARG ;
 int TURNSTILE_INHERITOR_THREAD ;
 struct turnstile* TURNSTILE_NULL ;
 int assert (int) ;
 int thread_get_update_flags_for_turnstile_propagation_stoppage (int ) ;
 int thread_lock (int ) ;
 int thread_needs_turnstile_promotion_update (int ,struct turnstile*) ;
 int thread_unlock (int ) ;
 int thread_update_turnstile_promotion_locked (int ,struct turnstile*) ;
 int turnstile_stats_update (int,int,struct turnstile*) ;
 int waitq_unlock (int *) ;

__attribute__((used)) static void
turnstile_update_inheritor_thread_priority_chain(
 struct turnstile **in_turnstile,
 thread_t *out_thread,
 int total_hop,
 turnstile_stats_update_flags_t tsu_flags)
{
 boolean_t needs_update = FALSE;
 struct turnstile *turnstile = *in_turnstile;
 thread_t thread_inheritor = turnstile->ts_inheritor;
 boolean_t first_update = !total_hop;

 assert(turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_THREAD);
 *in_turnstile = TURNSTILE_NULL;


 needs_update = thread_needs_turnstile_promotion_update(thread_inheritor, turnstile);
 if (!needs_update && !first_update) {
  turnstile_stats_update(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED |
   TSU_TURNSTILE_ARG | tsu_flags, turnstile);
  waitq_unlock(&turnstile->ts_waitq);
  return;
 }

 thread_lock(thread_inheritor);


 needs_update = thread_update_turnstile_promotion_locked(
  thread_inheritor, turnstile);
 if (!needs_update && !first_update) {

  turnstile_stats_update(total_hop + 1,
   (thread_get_update_flags_for_turnstile_propagation_stoppage(thread_inheritor)) |
   TSU_TURNSTILE_ARG | tsu_flags,
   turnstile);
  thread_unlock(thread_inheritor);
  waitq_unlock(&turnstile->ts_waitq);
  return;
 }


 waitq_unlock(&turnstile->ts_waitq);
 *out_thread = thread_inheritor;
 return;
}
