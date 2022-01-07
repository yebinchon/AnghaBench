
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSMemoryBarrier () ;
 int hw_lock_to (int *,int) ;
 int lt_hw_lock ;
 int lt_sleep_a_little_bit () ;
 int lt_thread_lock_grabbed ;
 int lt_thread_lock_success ;
 int mp_enable_preemption () ;

__attribute__((used)) static void
lt_trylock_hw_lock_with_to()
{
 OSMemoryBarrier();
 while (!lt_thread_lock_grabbed) {
  lt_sleep_a_little_bit();
  OSMemoryBarrier();
 }
 lt_thread_lock_success = hw_lock_to(&lt_hw_lock, 100);
 OSMemoryBarrier();
 mp_enable_preemption();
}
