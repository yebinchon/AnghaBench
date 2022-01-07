
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_bit_t ;


 int LOCK_PANIC_TIMEOUT ;
 scalar_t__ __improbable (int) ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ hw_lock_bit_to_internal (int *,unsigned int,int ) ;
 int panic (char*,int *) ;

void
hw_lock_bit_nopreempt(hw_lock_bit_t *lock, unsigned int bit)
{
 if (__improbable(get_preemption_level() == 0))
  panic("Attempt to take no-preempt bitlock %p in preemptible context", lock);
 if (hw_lock_bit_to_internal(lock, bit, LOCK_PANIC_TIMEOUT))
  return;



 panic("hw_lock_bit_nopreempt(): interlock held (%p)", lock);

}
