
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_rw_done (int *) ;
 scalar_t__ lck_rw_try_lock_exclusive (int *) ;
 int lt_counter ;
 int lt_note_another_blocking_lock_holder () ;
 int lt_note_blocking_lock_release () ;
 int lt_rwlock ;
 int lt_sleep_a_little_bit () ;

__attribute__((used)) static void
lt_grab_rw_exclusive_with_try()
{
 while(0 == lck_rw_try_lock_exclusive(&lt_rwlock)) {
  lt_sleep_a_little_bit();
 }

 lt_note_another_blocking_lock_holder();
 lt_sleep_a_little_bit();
 lt_counter++;
 lt_note_blocking_lock_release();
 lck_rw_done(&lt_rwlock);
}
