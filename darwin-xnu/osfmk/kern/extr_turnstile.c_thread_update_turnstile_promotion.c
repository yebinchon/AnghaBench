
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct turnstile {int dummy; } ;
typedef scalar_t__ boolean_t ;


 int TSU_BOOST_ARG ;
 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_TURNSTILE_ARG ;
 int thread_get_update_flags_for_turnstile_propagation_stoppage (int ) ;
 int thread_lock (int ) ;
 scalar_t__ thread_needs_turnstile_promotion_update (int ,struct turnstile*) ;
 int thread_unlock (int ) ;
 scalar_t__ thread_update_turnstile_promotion_locked (int ,struct turnstile*) ;
 int turnstile_stats_update (int,int,struct turnstile*) ;

__attribute__((used)) static boolean_t
thread_update_turnstile_promotion(
 thread_t thread,
 struct turnstile *turnstile)
{

 boolean_t needs_update = thread_needs_turnstile_promotion_update(thread, turnstile);

 if (!needs_update) {
  turnstile_stats_update(1, TSU_NO_PRI_CHANGE_NEEDED |
   TSU_TURNSTILE_ARG | TSU_BOOST_ARG, turnstile);
  return needs_update;
 }


 thread_lock(thread);
 needs_update = thread_update_turnstile_promotion_locked(thread, turnstile);


 if (!needs_update) {
  turnstile_stats_update(1,
   thread_get_update_flags_for_turnstile_propagation_stoppage(thread) |
   TSU_TURNSTILE_ARG | TSU_BOOST_ARG,
   turnstile);
 }
 thread_unlock(thread);
 return needs_update;
}
