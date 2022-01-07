
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int kdebug_slowcheck; } ;


 int FALSE ;
 TYPE_1__ kd_ctrl_page ;
 int kdebug_enable ;
 int kds_spin_lock ;
 int lck_spin_lock (int ) ;
 int lck_spin_unlock (int ) ;
 int ml_set_interrupts_enabled (int) ;

__attribute__((used)) static void
kdbg_set_flags(int slowflag, int enableflag, boolean_t enabled)
{
 int s = ml_set_interrupts_enabled(FALSE);
 lck_spin_lock(kds_spin_lock);

 if (enabled) {
  kd_ctrl_page.kdebug_slowcheck |= slowflag;
  kdebug_enable |= enableflag;
 } else {
  kd_ctrl_page.kdebug_slowcheck &= ~slowflag;
  kdebug_enable &= ~enableflag;
 }

 lck_spin_unlock(kds_spin_lock);
 ml_set_interrupts_enabled(s);
}
