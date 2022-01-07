
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int lck_rw_data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int LCK_RW_GRAB_WANT ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_PRIV_EXCL ;
 int LCK_RW_SHARED_MASK ;
 scalar_t__ LCK_RW_SHARED_READER ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 scalar_t__ TRUE ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 scalar_t__ lck_rw_deadline_for_spin (TYPE_1__*) ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 scalar_t__ mach_absolute_time () ;
 int memory_order_acquire_smp ;
 int wait_for_event () ;

__attribute__((used)) static boolean_t
lck_rw_grab(lck_rw_t *lock, int mode, boolean_t wait)
{
 uint64_t deadline = 0;
 uint32_t data, prev;
 boolean_t do_exch;





 wait = FALSE;


 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->lck_rw_data, &prev, memory_order_acquire_smp);
  if (data & LCK_RW_INTERLOCK) {
   atomic_exchange_abort();
   lck_rw_interlock_spin(lock);
   continue;
  }
  do_exch = FALSE;
  if (mode == LCK_RW_GRAB_WANT) {
   if ((data & LCK_RW_WANT_EXCL) == 0) {
    data |= LCK_RW_WANT_EXCL;
    do_exch = TRUE;
   }
  } else {
   if (((data & (LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE)) == 0) ||
    (((data & LCK_RW_SHARED_MASK)) && ((data & LCK_RW_PRIV_EXCL) == 0))) {
    data += LCK_RW_SHARED_READER;
    do_exch = TRUE;
   }
  }
  if (do_exch) {
   if (atomic_exchange_complete32(&lock->lck_rw_data, prev, data, memory_order_acquire_smp))
    return TRUE;
  } else {
   if (wait)
    wait_for_event();
   else
    atomic_exchange_abort();
   if (!wait || (mach_absolute_time() >= deadline))
    return FALSE;
  }
 }
}
