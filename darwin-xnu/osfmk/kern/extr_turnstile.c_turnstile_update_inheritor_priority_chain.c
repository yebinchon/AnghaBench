
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int turnstile_update_flags_t ;
typedef int turnstile_stats_update_flags_t ;
typedef struct turnstile* turnstile_inheritor_t ;
typedef scalar_t__ thread_t ;
struct turnstile {int ts_inheritor_flags; int ts_waitq; int * ts_inheritor; } ;
typedef int spl_t ;


 scalar_t__ THREAD_NULL ;
 int TSU_BOOST_ARG ;
 int TSU_FLAGS_NONE ;
 int TSU_NO_INHERITOR ;
 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_PRI_PROPAGATION ;
 int TSU_TURNSTILE_ARG ;
 int TURNSTILE_INHERITOR_THREAD ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INHERITOR_WORKQ ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_UPDATE_BOOST ;
 int assert (int) ;
 int panic (char*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (scalar_t__) ;
 int thread_recompute_user_promotion_locked (scalar_t__) ;
 int thread_update_waiting_turnstile_priority_chain (scalar_t__*,struct turnstile**,int,int,int) ;
 int turnstile_get_update_flags_for_above_UI_pri_change (struct turnstile*) ;
 int turnstile_recompute_priority_locked (struct turnstile*) ;
 int turnstile_stats_update (int,int,struct turnstile*) ;
 int turnstile_update_inheritor_thread_priority_chain (struct turnstile**,scalar_t__*,int,int) ;
 int turnstile_update_inheritor_turnstile_priority_chain (struct turnstile**,int,int) ;
 int turnstile_update_inheritor_workq_priority_chain (struct turnstile*,int ) ;
 int waitq_lock (int *) ;
 int waitq_unlock (int *) ;

__attribute__((used)) static void
turnstile_update_inheritor_priority_chain(
 turnstile_inheritor_t inheritor,
 turnstile_update_flags_t turnstile_flags)
{
 struct turnstile *turnstile = TURNSTILE_NULL;
 thread_t thread = THREAD_NULL;
 int total_hop = 0, thread_hop = 0;
 spl_t s;
 turnstile_stats_update_flags_t tsu_flags = ((turnstile_flags & TURNSTILE_UPDATE_BOOST) ?
  TSU_BOOST_ARG : TSU_FLAGS_NONE) | TSU_PRI_PROPAGATION;

 if (inheritor == ((void*)0)) {
  return;
 }

 s = splsched();

 if (turnstile_flags & TURNSTILE_INHERITOR_THREAD) {
  thread = inheritor;
  thread_lock(thread);

  thread_recompute_user_promotion_locked(thread);
 } else if (turnstile_flags & TURNSTILE_INHERITOR_TURNSTILE) {
  turnstile = inheritor;
  waitq_lock(&turnstile->ts_waitq);
  turnstile_recompute_priority_locked(turnstile);
  tsu_flags |= turnstile_get_update_flags_for_above_UI_pri_change(turnstile);
 } else {




  assert((turnstile_flags & TURNSTILE_INHERITOR_WORKQ) == 0);
 }

 while (turnstile != TURNSTILE_NULL || thread != THREAD_NULL) {
  if (turnstile != TURNSTILE_NULL) {
   if (turnstile->ts_inheritor == ((void*)0)) {
    turnstile_stats_update(total_hop + 1, TSU_NO_INHERITOR |
     TSU_TURNSTILE_ARG | tsu_flags,
     turnstile);
    waitq_unlock(&turnstile->ts_waitq);
    turnstile = TURNSTILE_NULL;
    break;
   }
   if (turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_THREAD) {
    turnstile_update_inheritor_thread_priority_chain(&turnstile, &thread,
     total_hop, tsu_flags);

   } else if (turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_TURNSTILE) {
    turnstile_update_inheritor_turnstile_priority_chain(&turnstile,
     total_hop, tsu_flags);

   } else if (turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_WORKQ) {
    turnstile_update_inheritor_workq_priority_chain(turnstile, s);
    turnstile_stats_update(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED | tsu_flags,
     ((void*)0));
    return;

   } else {
    panic("Inheritor flags not passed in turnstile_update_inheritor");
   }
  } else if (thread != THREAD_NULL) {
   thread_update_waiting_turnstile_priority_chain(&thread, &turnstile,
     thread_hop, total_hop, tsu_flags);
   thread_hop++;
  }
  total_hop++;
 }

 splx(s);
 return;
}
