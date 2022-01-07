
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ lck_rw_owner; int lck_rw_data; } ;
typedef TYPE_1__ lck_rw_t ;


 int LCK_RW_INTERLOCK ;
 int LCK_RW_PRIV_EXCL ;
 scalar_t__ LCK_RW_SHARED_READER ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LCK_RW_W_WAITING ;
 int THREAD_NULL ;
 int assertf (int,char*,int ,scalar_t__) ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 int cpu_pause () ;
 scalar_t__ current_thread () ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 void lck_rw_lock_exclusive_to_shared_gen (TYPE_1__*,int) ;
 int memory_order_release_smp ;
 int ordered_store_rw_owner (TYPE_1__*,int ) ;
 int panic (char*,TYPE_1__*,int) ;

void lck_rw_lock_exclusive_to_shared(lck_rw_t *lock)
{
 uint32_t data, prev;

 assertf(lock->lck_rw_owner == current_thread(), "state=0x%x, owner=%p", lock->lck_rw_data, lock->lck_rw_owner);
 ordered_store_rw_owner(lock, THREAD_NULL);
 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->lck_rw_data, &prev, memory_order_release_smp);
  if (data & LCK_RW_INTERLOCK) {





   panic("lck_rw_lock_exclusive_to_shared(): Interlock locked (%p): %x", lock, data);

  }
  data += LCK_RW_SHARED_READER;
  if (data & LCK_RW_WANT_UPGRADE)
   data &= ~(LCK_RW_WANT_UPGRADE);
  else
   data &= ~(LCK_RW_WANT_EXCL);
  if (!((prev & LCK_RW_W_WAITING) && (prev & LCK_RW_PRIV_EXCL)))
   data &= ~(LCK_RW_W_WAITING);
  if (atomic_exchange_complete32(&lock->lck_rw_data, prev, data, memory_order_release_smp))
   break;
  cpu_pause();
 }
 return lck_rw_lock_exclusive_to_shared_gen(lock, prev);
}
