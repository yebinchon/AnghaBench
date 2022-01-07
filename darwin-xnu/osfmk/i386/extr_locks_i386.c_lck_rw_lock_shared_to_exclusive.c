
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;


 int LCK_RW_INTERLOCK ;
 int LCK_RW_SHARED_MASK ;
 scalar_t__ LCK_RW_SHARED_READER ;
 int LCK_RW_WANT_UPGRADE ;
 int LCK_RW_W_WAITING ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_RW_LOCK_SHARED_TO_EXCL_UPGRADE ;
 int TRUE ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 int cpu_pause () ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 int lck_rw_lock_shared_to_exclusive_failure (TYPE_1__*,int) ;
 int lck_rw_lock_shared_to_exclusive_success (TYPE_1__*) ;
 int memory_order_acquire_smp ;

boolean_t
lck_rw_lock_shared_to_exclusive(lck_rw_t *lock)
{
 uint32_t data, prev;

 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->data, &prev, memory_order_acquire_smp);
  if (data & LCK_RW_INTERLOCK) {
   atomic_exchange_abort();
   lck_rw_interlock_spin(lock);
   continue;
  }
  if (data & LCK_RW_WANT_UPGRADE) {
   data -= LCK_RW_SHARED_READER;
   if ((data & LCK_RW_SHARED_MASK) == 0)
    data &= ~(LCK_RW_W_WAITING);
   if (atomic_exchange_complete32(&lock->data, prev, data, memory_order_acquire_smp))
    return lck_rw_lock_shared_to_exclusive_failure(lock, prev);
  } else {
   data |= LCK_RW_WANT_UPGRADE;
   data -= LCK_RW_SHARED_READER;
   if (atomic_exchange_complete32(&lock->data, prev, data, memory_order_acquire_smp))
    break;
  }
  cpu_pause();
 }

 if (data & LCK_RW_SHARED_MASK)
  lck_rw_lock_shared_to_exclusive_success(lock);



 return TRUE;
}
