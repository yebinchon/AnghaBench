
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int hw_lock_bit_t ;


 int FALSE ;
 int LOCKSTAT_RECORD (int ,int *,unsigned int) ;
 int LS_LCK_SPIN_LOCK_ACQUIRE ;
 scalar_t__ __improbable (int) ;
 int atomic_test_and_set32 (int *,int,int,int ,int ) ;
 unsigned int hw_lock_bit_to_contended (int *,int,int) ;
 int memory_order_acquire ;
 int ordered_load_bit (int *) ;
 int ordered_store_bit (int *,int) ;

__attribute__((used)) static inline unsigned int
hw_lock_bit_to_internal(hw_lock_bit_t *lock, unsigned int bit, uint32_t timeout)
{
 unsigned int success = 0;
 uint32_t mask = (1 << bit);

 uint32_t state;
 (void)timeout;
 state = ordered_load_bit(lock);
 if (!(mask & state)) {
  ordered_store_bit(lock, state | mask);
  success = 1;
 }







 return success;
}
