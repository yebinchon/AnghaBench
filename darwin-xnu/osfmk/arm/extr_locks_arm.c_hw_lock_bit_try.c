
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int hw_lock_bit_t ;
typedef unsigned int boolean_t ;


 unsigned int FALSE ;
 int LOCKSTAT_RECORD (int ,int *,unsigned int) ;
 int LS_LCK_SPIN_LOCK_ACQUIRE ;
 unsigned int TRUE ;
 int _disable_preemption () ;
 int _enable_preemption () ;
 unsigned int atomic_test_and_set32 (int *,int,int,int ,unsigned int) ;
 int memory_order_acquire ;
 int ordered_load_bit (int *) ;
 int ordered_store_bit (int *,int) ;

unsigned int
hw_lock_bit_try(hw_lock_bit_t *lock, unsigned int bit)
{
 uint32_t mask = (1 << bit);

 uint32_t state;

 boolean_t success = FALSE;

 _disable_preemption();




 state = ordered_load_bit(lock);
 if (!(mask & state)) {
  ordered_store_bit(lock, state | mask);
  success = TRUE;
 }

 if (!success)
  _enable_preemption();






 return success;
}
