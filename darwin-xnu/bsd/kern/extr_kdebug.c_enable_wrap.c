
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int kdebug_slowcheck; int kdebug_flags; } ;


 int FALSE ;
 int KDBG_NOWRAP ;
 int SLOW_NOLOG ;
 TYPE_1__ kd_ctrl_page ;
 int kds_spin_lock ;
 int lck_spin_lock (int ) ;
 int lck_spin_unlock (int ) ;
 int ml_set_interrupts_enabled (int) ;

__attribute__((used)) static void
enable_wrap(uint32_t old_slowcheck)
{
 int s = ml_set_interrupts_enabled(FALSE);
 lck_spin_lock(kds_spin_lock);

 kd_ctrl_page.kdebug_flags &= ~KDBG_NOWRAP;

 if ( !(old_slowcheck & SLOW_NOLOG))
  kd_ctrl_page.kdebug_slowcheck &= ~SLOW_NOLOG;

 lck_spin_unlock(kds_spin_lock);
 ml_set_interrupts_enabled(s);
}
