
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union turnstile_type_gencount {int ts_gencount; int value; } ;
typedef int uint32_t ;
struct turnstile {int ts_type_gencount; } ;


 int atomic_load_explicit (int *,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static uint32_t
turnstile_get_gencount(struct turnstile *turnstile)
{
 union turnstile_type_gencount type_and_gencount;

 type_and_gencount.value = atomic_load_explicit(&turnstile->ts_type_gencount, memory_order_relaxed);
 return (uint32_t) type_and_gencount.ts_gencount;
}
