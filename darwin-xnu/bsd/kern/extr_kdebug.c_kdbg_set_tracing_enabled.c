
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int enabled; int kdebug_iops; int kdebug_slowcheck; int oldest_time; } ;


 int FALSE ;
 int KDEBUG_ENABLE_PPT ;
 int KDEBUG_ENABLE_TRACE ;
 int KD_CALLBACK_KDEBUG_DISABLED ;
 int KD_CALLBACK_KDEBUG_ENABLED ;
 int KD_CALLBACK_SYNC_FLUSH ;
 int SLOW_NOLOG ;
 int commpage_update_kdebug_state () ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_iop_list_callback (int ,int ,int *) ;
 int kdbg_timestamp () ;
 int kdebug_enable ;
 int kds_spin_lock ;
 int lck_spin_lock (int ) ;
 int lck_spin_unlock (int ) ;
 int ml_set_interrupts_enabled (int) ;

__attribute__((used)) static void
kdbg_set_tracing_enabled(boolean_t enabled, uint32_t trace_type)
{
 int s = ml_set_interrupts_enabled(FALSE);
 lck_spin_lock(kds_spin_lock);
 if (enabled) {



  kd_ctrl_page.oldest_time = kdbg_timestamp();
  kdebug_enable |= trace_type;
  kd_ctrl_page.kdebug_slowcheck &= ~SLOW_NOLOG;
  kd_ctrl_page.enabled = 1;
  commpage_update_kdebug_state();
 } else {
  kdebug_enable &= ~(KDEBUG_ENABLE_TRACE|KDEBUG_ENABLE_PPT);
  kd_ctrl_page.kdebug_slowcheck |= SLOW_NOLOG;
  kd_ctrl_page.enabled = 0;
  commpage_update_kdebug_state();
 }
 lck_spin_unlock(kds_spin_lock);
 ml_set_interrupts_enabled(s);

 if (enabled) {
  kdbg_iop_list_callback(kd_ctrl_page.kdebug_iops, KD_CALLBACK_KDEBUG_ENABLED, ((void*)0));
 } else {





  kdbg_iop_list_callback(kd_ctrl_page.kdebug_iops, KD_CALLBACK_KDEBUG_DISABLED, ((void*)0));
  kdbg_iop_list_callback(kd_ctrl_page.kdebug_iops, KD_CALLBACK_SYNC_FLUSH, ((void*)0));
 }
}
