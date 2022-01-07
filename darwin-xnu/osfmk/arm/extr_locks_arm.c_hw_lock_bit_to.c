
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int hw_lock_bit_t ;


 int _disable_preemption () ;
 unsigned int hw_lock_bit_to_internal (int *,unsigned int,int ) ;

unsigned int
hw_lock_bit_to(hw_lock_bit_t *lock, unsigned int bit, uint32_t timeout)
{
 _disable_preemption();
 return hw_lock_bit_to_internal(lock, bit, timeout);
}
