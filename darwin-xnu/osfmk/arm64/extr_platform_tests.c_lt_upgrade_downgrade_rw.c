
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_lock_exclusive_to_shared (int *) ;
 int lck_rw_lock_shared (int *) ;
 scalar_t__ lck_rw_lock_shared_to_exclusive (int *) ;
 scalar_t__ lck_rw_try_lock_exclusive (int *) ;
 scalar_t__ lck_rw_try_lock_shared (int *) ;
 int lt_counter ;
 scalar_t__ lt_max_upgrade_holders ;
 int lt_note_another_blocking_lock_holder () ;
 int lt_note_blocking_lock_release () ;
 int lt_rwlock ;
 int lt_sleep_a_little_bit () ;
 int lt_spin_a_little_bit () ;
 scalar_t__ lt_upgrade_holders ;

__attribute__((used)) static void
lt_upgrade_downgrade_rw()
{
 boolean_t upgraded, success;

 success = lck_rw_try_lock_shared(&lt_rwlock);
 if (!success) {
  lck_rw_lock_shared(&lt_rwlock);
 }

 lt_note_another_blocking_lock_holder();
 lt_sleep_a_little_bit();
 lt_note_blocking_lock_release();

 upgraded = lck_rw_lock_shared_to_exclusive(&lt_rwlock);
 if (!upgraded) {
  success = lck_rw_try_lock_exclusive(&lt_rwlock);

  if (!success) {
   lck_rw_lock_exclusive(&lt_rwlock);
  }
 }

 lt_upgrade_holders++;
 if (lt_upgrade_holders > lt_max_upgrade_holders) {
  lt_max_upgrade_holders = lt_upgrade_holders;
 }

 lt_counter++;
 lt_sleep_a_little_bit();

 lt_upgrade_holders--;

 lck_rw_lock_exclusive_to_shared(&lt_rwlock);

 lt_spin_a_little_bit();
 lck_rw_done(&lt_rwlock);
}
