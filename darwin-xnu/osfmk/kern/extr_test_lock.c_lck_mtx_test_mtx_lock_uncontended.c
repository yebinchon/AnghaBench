
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int WARMUP_ITER ;
 int disable_all_test_mtx_stats () ;
 int enable_all_test_mtx_stats () ;
 int lck_mtx_test_lock () ;
 int lck_mtx_test_try_lock () ;
 int lck_mtx_test_unlock_mtx () ;

__attribute__((used)) static kern_return_t
lck_mtx_test_mtx_lock_uncontended(
 int iter)
{
 int i;

 disable_all_test_mtx_stats();


 for (i = 0; i < WARMUP_ITER; i++) {
  lck_mtx_test_lock();
  lck_mtx_test_unlock_mtx();
 }

 enable_all_test_mtx_stats();

 for (i = 0; i < iter; i++) {
  lck_mtx_test_lock();
  lck_mtx_test_unlock_mtx();
 }

 disable_all_test_mtx_stats();


 for (i = 0; i < WARMUP_ITER; i++) {
  lck_mtx_test_try_lock();
  lck_mtx_test_unlock_mtx();
 }

 enable_all_test_mtx_stats();

 for (i = 0; i < iter; i++) {
  lck_mtx_test_try_lock();
  lck_mtx_test_unlock_mtx();
 }

 return KERN_SUCCESS;
}
