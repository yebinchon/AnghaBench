
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_6__ {int lck_mtx_data; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_MTX_THREAD_TO_STATE (int ) ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_MTX_TRY_LOCK_ACQUIRE ;
 int TRUE ;
 scalar_t__ atomic_compare_exchange (int *,int ,int ,int ,int ) ;
 int current_thread () ;
 int lck_mtx_try_lock_contended (TYPE_1__*,int ) ;
 int lck_mtx_verify (TYPE_1__*) ;
 int memory_order_acquire_smp ;

boolean_t
lck_mtx_try_lock(lck_mtx_t *lock)
{
 thread_t thread = current_thread();

 lck_mtx_verify(lock);
 if (atomic_compare_exchange(&lock->lck_mtx_data, 0, LCK_MTX_THREAD_TO_STATE(thread),
     memory_order_acquire_smp, FALSE)) {



  return TRUE;
 }
 return lck_mtx_try_lock_contended(lock, thread);
}
