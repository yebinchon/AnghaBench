
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union turnstile_type_gencount {int ts_type; int value; } ;
typedef int turnstile_type_t ;
struct turnstile {int ts_type_gencount; } ;


 int atomic_load_explicit (int *,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static turnstile_type_t
turnstile_get_type(struct turnstile *turnstile)
{
 union turnstile_type_gencount type_and_gencount;

 type_and_gencount.value = atomic_load_explicit(&turnstile->ts_type_gencount, memory_order_relaxed);
 return (turnstile_type_t) type_and_gencount.ts_type;
}
