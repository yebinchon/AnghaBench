
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_bit_t ;


 int _enable_preemption () ;
 int hw_unlock_bit_internal (int *,unsigned int) ;

void
hw_unlock_bit(hw_lock_bit_t *lock, unsigned int bit)
{
 hw_unlock_bit_internal(lock, bit);
 _enable_preemption();
}
