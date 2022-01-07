
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_15__ {int lck_rw_data; } ;
typedef TYPE_2__ lck_rw_t ;
struct TYPE_14__ {int rwlock_count; } ;


 int DTRACE_RW_EXCL ;
 int FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_SHARED_MASK ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LOCKSTAT_RECORD (int ,TYPE_2__*,int ) ;
 int LS_LCK_RW_LOCK_EXCL_ACQUIRE ;
 TYPE_1__* THREAD_NULL ;
 int assertf (int,char*,int ,TYPE_1__*) ;
 scalar_t__ atomic_test_and_set32 (int *,int,int,int ,int ) ;
 TYPE_1__* current_thread () ;
 int lck_rw_lock_exclusive_gen (TYPE_2__*) ;
 int memory_order_acquire_smp ;
 int ordered_load_rw (TYPE_2__*) ;
 TYPE_1__* ordered_load_rw_owner (TYPE_2__*) ;
 int ordered_store_rw_owner (TYPE_2__*,TYPE_1__*) ;

void
lck_rw_lock_exclusive(lck_rw_t *lock)
{
 thread_t thread = current_thread();

 thread->rwlock_count++;
 if (atomic_test_and_set32(&lock->lck_rw_data,
  (LCK_RW_SHARED_MASK | LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE | LCK_RW_INTERLOCK),
  LCK_RW_WANT_EXCL, memory_order_acquire_smp, FALSE)) {



 } else
  lck_rw_lock_exclusive_gen(lock);




 ordered_store_rw_owner(lock, thread);
}
