
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int WARMUP_ITER ;
 int disable_all_test_mtx_stats () ;
 int enable_all_test_mtx_stats () ;
 int lck_mtx_test_lock_spin () ;
 int lck_mtx_test_lock_spin_always () ;
 int lck_mtx_test_try_lock_spin () ;
 int lck_mtx_test_try_lock_spin_always () ;
 int lck_mtx_test_unlock_spin () ;

__attribute__((used)) static kern_return_t
lck_mtx_test_mtx_spin_uncontended(
 int iter)
{
 int i;

 disable_all_test_mtx_stats();


 for (i = 0; i < WARMUP_ITER; i++) {
  lck_mtx_test_lock_spin();
  lck_mtx_test_unlock_spin();
 }

 enable_all_test_mtx_stats();

 for (i = 0; i < iter; i++) {
  lck_mtx_test_lock_spin();
  lck_mtx_test_unlock_spin();
 }

 disable_all_test_mtx_stats();


 for (i = 0; i < WARMUP_ITER; i++) {
  lck_mtx_test_try_lock_spin();
  lck_mtx_test_unlock_spin();
 }

 enable_all_test_mtx_stats();

 for (i = 0; i < iter; i++) {
  lck_mtx_test_try_lock_spin();
  lck_mtx_test_unlock_spin();
 }

 disable_all_test_mtx_stats();


 for (i = 0; i < WARMUP_ITER; i++) {
  lck_mtx_test_lock_spin_always();
  lck_mtx_test_unlock_spin();
 }

 enable_all_test_mtx_stats();

 for (i = 0; i < iter; i++) {
  lck_mtx_test_lock_spin_always();
  lck_mtx_test_unlock_spin();
 }

 disable_all_test_mtx_stats();


 for (i = 0; i < WARMUP_ITER; i++) {
  lck_mtx_test_try_lock_spin_always();
  lck_mtx_test_unlock_spin();
 }

 enable_all_test_mtx_stats();

 for (i = 0; i < iter; i++) {
  lck_mtx_test_try_lock_spin_always();
  lck_mtx_test_unlock_spin();
 }

 return KERN_SUCCESS;
}
