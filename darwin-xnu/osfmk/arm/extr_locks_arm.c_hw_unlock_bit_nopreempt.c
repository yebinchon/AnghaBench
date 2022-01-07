
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_bit_t ;


 scalar_t__ __improbable (int) ;
 scalar_t__ get_preemption_level () ;
 int hw_unlock_bit_internal (int *,unsigned int) ;
 int panic (char*,int *) ;

void
hw_unlock_bit_nopreempt(hw_lock_bit_t *lock, unsigned int bit)
{
 if (__improbable(get_preemption_level() == 0))
  panic("Attempt to release no-preempt bitlock %p in preemptible context", lock);
 hw_unlock_bit_internal(lock, bit);
}
