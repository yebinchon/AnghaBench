
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_16__ {int lck_rw_data; } ;
typedef TYPE_2__ lck_rw_t ;
typedef int boolean_t ;
struct TYPE_15__ {int rwlock_count; } ;


 int DTRACE_RW_EXCL ;
 int FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_SHARED_MASK ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LOCKSTAT_RECORD (int ,TYPE_2__*,int ) ;
 int LS_LCK_RW_TRY_LOCK_EXCL_ACQUIRE ;
 TYPE_1__* THREAD_NULL ;
 int TRUE ;
 int assertf (int,char*,int ,TYPE_1__*) ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 int cpu_pause () ;
 TYPE_1__* current_thread () ;
 int lck_rw_interlock_spin (TYPE_2__*) ;
 int memory_order_acquire_smp ;
 int ordered_load_rw (TYPE_2__*) ;
 TYPE_1__* ordered_load_rw_owner (TYPE_2__*) ;
 int ordered_store_rw_owner (TYPE_2__*,TYPE_1__*) ;
 int panic (char*,TYPE_2__*,int) ;

boolean_t lck_rw_try_lock_exclusive(lck_rw_t *lock)
{
 uint32_t data, prev;
 thread_t thread;

 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->lck_rw_data, &prev, memory_order_acquire_smp);
  if (data & LCK_RW_INTERLOCK) {





   panic("lck_rw_try_lock_exclusive(): Interlock locked (%p): %x", lock, data);

  }
  if (data & (LCK_RW_SHARED_MASK | LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE)) {
   atomic_exchange_abort();
   return FALSE;
  }
  data |= LCK_RW_WANT_EXCL;
  if (atomic_exchange_complete32(&lock->lck_rw_data, prev, data, memory_order_acquire_smp))
   break;
  cpu_pause();
 }
 thread = current_thread();
 thread->rwlock_count++;




 ordered_store_rw_owner(lock, thread);



 return TRUE;
}
