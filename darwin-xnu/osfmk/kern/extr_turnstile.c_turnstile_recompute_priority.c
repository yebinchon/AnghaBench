
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_waitq; } ;
typedef int spl_t ;
typedef int boolean_t ;


 int FALSE ;
 int splsched () ;
 int splx (int ) ;
 int turnstile_recompute_priority_locked (struct turnstile*) ;
 int waitq_lock (int *) ;
 int waitq_unlock (int *) ;

boolean_t
turnstile_recompute_priority(
 struct turnstile *turnstile)
{
 boolean_t needs_priority_update = FALSE;
 spl_t s = splsched();

 waitq_lock(&turnstile->ts_waitq);

 needs_priority_update = turnstile_recompute_priority_locked(turnstile);

 waitq_unlock(&turnstile->ts_waitq);
 splx(s);
 return needs_priority_update;

}
