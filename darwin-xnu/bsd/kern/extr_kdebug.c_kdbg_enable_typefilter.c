
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kdebug_flags; } ;


 int KDBG_RANGECHECK ;
 int KDBG_TYPEFILTER_CHECK ;
 int KDBG_VALCHECK ;
 int SLOW_CHECKS ;
 int TRUE ;
 int assert (int ) ;
 int commpage_update_kdebug_state () ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_set_flags (int ,int ,int ) ;
 int kdbg_typefilter ;

__attribute__((used)) static void
kdbg_enable_typefilter(void)
{
 assert(kdbg_typefilter);
 kd_ctrl_page.kdebug_flags &= ~(KDBG_RANGECHECK | KDBG_VALCHECK);
 kd_ctrl_page.kdebug_flags |= KDBG_TYPEFILTER_CHECK;
 kdbg_set_flags(SLOW_CHECKS, 0, TRUE);
 commpage_update_kdebug_state();
}
