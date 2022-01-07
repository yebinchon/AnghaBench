
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSMemoryBarrier () ;
 int lck_spin_try_lock (int *) ;
 int lt_lck_spin_t ;
 int lt_sleep_a_little_bit () ;
 int lt_thread_lock_grabbed ;
 int lt_thread_lock_success ;

__attribute__((used)) static void
lt_trylock_spin_try_lock()
{
 OSMemoryBarrier();
 while (!lt_thread_lock_grabbed) {
  lt_sleep_a_little_bit();
  OSMemoryBarrier();
 }
 lt_thread_lock_success = lck_spin_try_lock(&lt_lck_spin_t);
 OSMemoryBarrier();
}
