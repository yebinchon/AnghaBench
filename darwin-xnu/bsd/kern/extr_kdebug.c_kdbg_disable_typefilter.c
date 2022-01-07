
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kdebug_flags; int kdebug_iops; } ;


 int FALSE ;
 int KDBG_PIDCHECK ;
 int KDBG_PIDEXCLUDE ;
 int KDBG_TYPEFILTER_CHECK ;
 int KD_CALLBACK_TYPEFILTER_CHANGED ;
 int SLOW_CHECKS ;
 int TRUE ;
 int commpage_update_kdebug_state () ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_iop_list_callback (int ,int ,int ) ;
 int kdbg_set_flags (int ,int ,int ) ;
 int kdbg_typefilter ;
 int typefilter_allow_all (int ) ;

__attribute__((used)) static void
kdbg_disable_typefilter(void)
{
 bool notify_iops = kd_ctrl_page.kdebug_flags & KDBG_TYPEFILTER_CHECK;
 kd_ctrl_page.kdebug_flags &= ~KDBG_TYPEFILTER_CHECK;

 if ((kd_ctrl_page.kdebug_flags & (KDBG_PIDCHECK | KDBG_PIDEXCLUDE))) {
  kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
 } else {
  kdbg_set_flags(SLOW_CHECKS, 0, FALSE);
 }
 commpage_update_kdebug_state();

 if (notify_iops) {





  typefilter_allow_all(kdbg_typefilter);
  kdbg_iop_list_callback(kd_ctrl_page.kdebug_iops,
    KD_CALLBACK_TYPEFILTER_CHANGED, kdbg_typefilter);
 }
}
