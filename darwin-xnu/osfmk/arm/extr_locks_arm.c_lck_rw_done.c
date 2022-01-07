
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lck_rw_type_t ;
struct TYPE_6__ {scalar_t__ lck_rw_owner; int lck_rw_data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_PRIV_EXCL ;
 int LCK_RW_R_WAITING ;
 int LCK_RW_SHARED_MASK ;
 scalar_t__ LCK_RW_SHARED_READER ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LCK_RW_W_WAITING ;
 scalar_t__ THREAD_NULL ;
 scalar_t__ TRUE ;
 int assertf (int,char*,int ,scalar_t__) ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 int cpu_pause () ;
 scalar_t__ current_thread () ;
 int lck_rw_done_gen (TYPE_1__*,int) ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 int memory_order_release_smp ;
 int ordered_store_rw_owner (TYPE_1__*,scalar_t__) ;
 int panic (char*,...) ;

lck_rw_type_t lck_rw_done(lck_rw_t *lock)
{
 uint32_t data, prev;
 boolean_t once = FALSE;

 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->lck_rw_data, &prev, memory_order_release_smp);
  if (data & LCK_RW_INTERLOCK) {





   panic("lck_rw_done(): Interlock locked (%p): %x", lock, data);

  }
  if (data & LCK_RW_SHARED_MASK) {
   assertf(lock->lck_rw_owner == THREAD_NULL, "state=0x%x, owner=%p", lock->lck_rw_data, lock->lck_rw_owner);
   data -= LCK_RW_SHARED_READER;
   if ((data & LCK_RW_SHARED_MASK) == 0)
    goto check_waiters;
  } else {
   if (data & LCK_RW_WANT_UPGRADE) {
    data &= ~(LCK_RW_WANT_UPGRADE);
   } else {
    if (data & LCK_RW_WANT_EXCL)
     data &= ~(LCK_RW_WANT_EXCL);
    else
     panic("Releasing non-exclusive RW lock without a reader refcount!");
   }
   if (!once) {

    assertf(lock->lck_rw_owner == current_thread(), "state=0x%x, owner=%p", lock->lck_rw_data, lock->lck_rw_owner);
    ordered_store_rw_owner(lock, THREAD_NULL);
    once = TRUE;
   }
check_waiters:







   if (prev & LCK_RW_W_WAITING) {
    data &= ~(LCK_RW_W_WAITING);
    if ((prev & LCK_RW_PRIV_EXCL) == 0)
     data &= ~(LCK_RW_R_WAITING);
   } else
    data &= ~(LCK_RW_R_WAITING);
  }
  if (atomic_exchange_complete32(&lock->lck_rw_data, prev, data, memory_order_release_smp))
   break;
  cpu_pause();
 }
 return lck_rw_done_gen(lock, prev);
}
