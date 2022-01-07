
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_refcount; } ;


 struct turnstile* TURNSTILE_NULL ;
 int os_ref_retain (int *) ;

void
turnstile_reference(struct turnstile *turnstile)
{
 if (turnstile == TURNSTILE_NULL) {
  return;
 }
 os_ref_retain(&turnstile->ts_refcount);
}
