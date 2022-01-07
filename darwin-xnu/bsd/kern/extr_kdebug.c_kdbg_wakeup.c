
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ kds_inuse_count; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__ kd_ctrl_page ;
 scalar_t__ kds_waiter ;
 int kdw_spin_lock ;
 scalar_t__ lck_spin_try_lock (int ) ;
 int lck_spin_unlock (int ) ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;
 scalar_t__ n_storage_threshold ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
kdbg_wakeup(void)
{
 boolean_t need_kds_wakeup = FALSE;
 boolean_t s = ml_set_interrupts_enabled(FALSE);

 if (lck_spin_try_lock(kdw_spin_lock)) {
  if (kds_waiter &&
      (kd_ctrl_page.kds_inuse_count >= n_storage_threshold))
  {
   kds_waiter = 0;
   need_kds_wakeup = TRUE;
  }
  lck_spin_unlock(kdw_spin_lock);
 }

 ml_set_interrupts_enabled(s);

 if (need_kds_wakeup == TRUE) {
  wakeup(&kds_waiter);
 }
}
