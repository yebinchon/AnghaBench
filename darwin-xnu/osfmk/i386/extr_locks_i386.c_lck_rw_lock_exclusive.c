
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ lck_rw_t ;
struct TYPE_7__ {int rwlock_count; } ;


 int DTRACE_RW_EXCL ;
 int FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_SHARED_MASK ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_RW_LOCK_EXCL_ACQUIRE ;
 scalar_t__ atomic_test_and_set32 (int *,int,int,int ,int ) ;
 TYPE_4__* current_thread () ;
 int lck_rw_lock_exclusive_gen (TYPE_1__*) ;
 int memory_order_acquire_smp ;

void
lck_rw_lock_exclusive(lck_rw_t *lock)
{
 current_thread()->rwlock_count++;
 if (atomic_test_and_set32(&lock->data,
  (LCK_RW_SHARED_MASK | LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE | LCK_RW_INTERLOCK),
  LCK_RW_WANT_EXCL, memory_order_acquire_smp, FALSE)) {



 } else
  lck_rw_lock_exclusive_gen(lock);
}
