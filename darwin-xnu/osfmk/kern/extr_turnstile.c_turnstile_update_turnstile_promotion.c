
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_waitq; scalar_t__ ts_inheritor; } ;
typedef scalar_t__ boolean_t ;


 int TSU_BOOST_ARG ;
 int TSU_NO_INHERITOR ;
 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_TURNSTILE_ARG ;
 scalar_t__ turnstile_need_turnstile_promotion_update (struct turnstile*,struct turnstile*) ;
 int turnstile_stats_update (int,int,struct turnstile*) ;
 scalar_t__ turnstile_update_turnstile_promotion_locked (struct turnstile*,struct turnstile*) ;
 int waitq_lock (int *) ;
 int waitq_unlock (int *) ;

__attribute__((used)) static boolean_t
turnstile_update_turnstile_promotion(
 struct turnstile *dst_turnstile,
 struct turnstile *src_turnstile)
{

 boolean_t needs_update = turnstile_need_turnstile_promotion_update(dst_turnstile, src_turnstile);
 if (!needs_update) {
  turnstile_stats_update(1, TSU_NO_PRI_CHANGE_NEEDED |
   TSU_TURNSTILE_ARG | TSU_BOOST_ARG,
   src_turnstile);
  return needs_update;
 }


 waitq_lock(&dst_turnstile->ts_waitq);
 needs_update = turnstile_update_turnstile_promotion_locked(dst_turnstile, src_turnstile);


 if (!needs_update) {
  turnstile_stats_update(1,
   (dst_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
   TSU_TURNSTILE_ARG | TSU_BOOST_ARG, src_turnstile);
 }
 waitq_unlock(&dst_turnstile->ts_waitq);
 return needs_update;
}
