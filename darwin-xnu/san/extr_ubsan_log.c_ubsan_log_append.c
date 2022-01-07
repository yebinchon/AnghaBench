
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsan_violation {int dummy; } ;


 int atomic_compare_exchange_weak (int *,size_t*,size_t) ;
 size_t atomic_load (int *) ;
 size_t next_entry (size_t) ;
 struct ubsan_violation* ubsan_log ;
 int ubsan_log_head ;
 int ubsan_log_next ;
 size_t ubsan_log_tail ;
 int ubsan_logging ;

void
ubsan_log_append(struct ubsan_violation *e)
{
 if (!ubsan_logging) {
  return;
 }


 size_t i = atomic_load(&ubsan_log_next);
 size_t n;
 do {
  n = next_entry(i);
  if (n == ubsan_log_tail) {
   return;
  }
 } while (!atomic_compare_exchange_weak(&ubsan_log_next, &i, n));

 ubsan_log[i] = *e;


 size_t prev;
 do {
  prev = i;
 } while (!atomic_compare_exchange_weak(&ubsan_log_head, &prev, n));
}
