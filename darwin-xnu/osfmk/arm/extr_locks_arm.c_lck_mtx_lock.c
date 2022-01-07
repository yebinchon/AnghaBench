
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_7__ {int lck_mtx_data; } ;
typedef TYPE_1__ lck_mtx_t ;


 int FALSE ;
 int LCK_MTX_THREAD_TO_STATE (int ) ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_MTX_LOCK_ACQUIRE ;
 scalar_t__ atomic_compare_exchange (int *,int ,int ,int ,int ) ;
 int current_thread () ;
 int lck_mtx_check_preemption (TYPE_1__*) ;
 int lck_mtx_lock_contended (TYPE_1__*,int ,int ) ;
 int lck_mtx_verify (TYPE_1__*) ;
 int memory_order_acquire_smp ;

void
lck_mtx_lock(lck_mtx_t *lock)
{
 thread_t thread;

 lck_mtx_verify(lock);
 lck_mtx_check_preemption(lock);
 thread = current_thread();
 if (atomic_compare_exchange(&lock->lck_mtx_data, 0, LCK_MTX_THREAD_TO_STATE(thread),
     memory_order_acquire_smp, FALSE)) {



  return;
 }
 lck_mtx_lock_contended(lock, thread, FALSE);
}
