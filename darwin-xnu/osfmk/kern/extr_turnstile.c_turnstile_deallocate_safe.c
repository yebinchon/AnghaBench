
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_refcount; } ;


 struct turnstile* TURNSTILE_NULL ;
 scalar_t__ __improbable (int) ;
 scalar_t__ os_ref_release (int *) ;
 int turnstile_deallocate_enqueue (struct turnstile*) ;

void
turnstile_deallocate_safe(struct turnstile *turnstile)
{
 if (turnstile == TURNSTILE_NULL) {
  return;
 }

 if (__improbable(os_ref_release(&turnstile->ts_refcount) == 0)) {

  turnstile_deallocate_enqueue(turnstile);
 }
}
