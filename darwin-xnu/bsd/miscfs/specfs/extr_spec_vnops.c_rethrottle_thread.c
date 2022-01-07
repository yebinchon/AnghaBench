
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int boolean_t ;
struct TYPE_4__ {int uu_is_throttled; int uu_was_rethrottled; int uu_on_throttlelist; int uu_rethrottle_lock; int uu_thread; int * uu_throttle_info; } ;


 int DBG_FSRW ;
 int FALSE ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,int,int,int ,int ) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int ml_set_interrupts_enabled (int ) ;
 int rethrottle_wakeups ;
 int thread_tid (int ) ;
 int throttle_get_thread_throttle_level (TYPE_1__*) ;
 int wakeup (int*) ;

void
rethrottle_thread(uthread_t ut)
{




 if (ut->uu_throttle_info == ((void*)0))
  return;

 boolean_t s = ml_set_interrupts_enabled(FALSE);
 lck_spin_lock(&ut->uu_rethrottle_lock);

 if (!ut->uu_is_throttled)
  ut->uu_was_rethrottled = 1;
 else {
  int my_new_level = throttle_get_thread_throttle_level(ut);

  if (my_new_level != ut->uu_on_throttlelist) {






   ut->uu_is_throttled = 0;
   wakeup(&ut->uu_on_throttlelist);

   rethrottle_wakeups++;
   KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_FSRW, 102)), thread_tid(ut->uu_thread), ut->uu_on_throttlelist, my_new_level, 0, 0);
  }
 }
 lck_spin_unlock(&ut->uu_rethrottle_lock);
 ml_set_interrupts_enabled(s);
}
