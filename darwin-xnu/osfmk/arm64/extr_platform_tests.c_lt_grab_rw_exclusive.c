
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lt_counter ;
 int lt_note_another_blocking_lock_holder () ;
 int lt_note_blocking_lock_release () ;
 int lt_rwlock ;
 int lt_sleep_a_little_bit () ;

__attribute__((used)) static void
lt_grab_rw_exclusive()
{
 lck_rw_lock_exclusive(&lt_rwlock);
 lt_note_another_blocking_lock_holder();
 lt_sleep_a_little_bit();
 lt_counter++;
 lt_note_blocking_lock_release();
 lck_rw_done(&lt_rwlock);
}
