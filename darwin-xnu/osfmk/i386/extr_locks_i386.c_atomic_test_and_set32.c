
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum memory_order { ____Placeholder_memory_order } memory_order ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int*,int*,int) ;
 scalar_t__ atomic_exchange_complete32 (int*,int,int,int) ;
 int cpu_pause () ;

__attribute__((used)) static boolean_t
atomic_test_and_set32(uint32_t *target, uint32_t test_mask, uint32_t set_mask, enum memory_order ord, boolean_t wait)
{
 uint32_t value, prev;

 for ( ; ; ) {
  value = atomic_exchange_begin32(target, &prev, ord);
  if (value & test_mask) {
   if (wait)
    cpu_pause();
   else
    atomic_exchange_abort();
   return FALSE;
  }
  value |= set_mask;
  if (atomic_exchange_complete32(target, prev, value, ord))
   return TRUE;
 }
}
