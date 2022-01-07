
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSMemoryBarrier () ;
 scalar_t__ lt_done_threads ;
 int lt_sleep_a_little_bit () ;
 scalar_t__ lt_target_done_threads ;

__attribute__((used)) static void
lt_wait_for_lock_test_threads()
{
 OSMemoryBarrier();

 while (lt_done_threads < lt_target_done_threads) {
  lt_sleep_a_little_bit();
  OSMemoryBarrier();
 }
 OSMemoryBarrier();
}
