
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lck_mtx_try_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lt_counter ;
 int lt_mtx ;
 int lt_note_another_blocking_lock_holder () ;
 int lt_note_blocking_lock_release () ;
 int lt_sleep_a_little_bit () ;

__attribute__((used)) static void
lt_grab_mutex_with_try()
{
 while(0 == lck_mtx_try_lock(&lt_mtx));
 lt_note_another_blocking_lock_holder();
 lt_sleep_a_little_bit();
 lt_counter++;
 lt_note_blocking_lock_release();
 lck_mtx_unlock(&lt_mtx);

}
