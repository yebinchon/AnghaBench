
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union turnstile_type_gencount {int value; int ts_gencount; int ts_type; } ;
typedef int turnstile_type_t ;
struct turnstile {int ts_type_gencount; } ;


 int atomic_load_explicit (int *,int ) ;
 int atomic_store_explicit (int *,int ,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static void
turnstile_set_type_and_increment_gencount(struct turnstile *turnstile, turnstile_type_t type)
{
 union turnstile_type_gencount type_and_gencount;


 type_and_gencount.value = atomic_load_explicit(&turnstile->ts_type_gencount, memory_order_relaxed);
 type_and_gencount.ts_type = type;
 type_and_gencount.ts_gencount++;
 atomic_store_explicit(&turnstile->ts_type_gencount, type_and_gencount.value, memory_order_relaxed);
}
