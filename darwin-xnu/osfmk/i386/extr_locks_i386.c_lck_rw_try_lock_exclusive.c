
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;
struct TYPE_7__ {int rwlock_count; } ;


 int DTRACE_RW_EXCL ;
 int FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_SHARED_MASK ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_RW_TRY_LOCK_EXCL_ACQUIRE ;
 int TRUE ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 int cpu_pause () ;
 TYPE_4__* current_thread () ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 int memory_order_acquire_smp ;

boolean_t lck_rw_try_lock_exclusive(lck_rw_t *lock)
{
 uint32_t data, prev;

 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->data, &prev, memory_order_acquire_smp);
  if (data & LCK_RW_INTERLOCK) {
   atomic_exchange_abort();
   lck_rw_interlock_spin(lock);
   continue;
  }
  if (data & (LCK_RW_SHARED_MASK | LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE)) {
   atomic_exchange_abort();
   return FALSE;
  }
  data |= LCK_RW_WANT_EXCL;
  if (atomic_exchange_complete32(&lock->data, prev, data, memory_order_acquire_smp))
   break;
  cpu_pause();
 }

 current_thread()->rwlock_count++;



 return TRUE;
}
