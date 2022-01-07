
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_free_turnstiles; } ;
typedef int boolean_t ;


 int SLIST_EMPTY (int *) ;

__attribute__((used)) static inline boolean_t
turnstile_freelist_empty(
 struct turnstile *ts)
{
 return SLIST_EMPTY(&ts->ts_free_turnstiles);
}
