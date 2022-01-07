
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int KDBG_TYPEFILTER_CHECK ;
 int KDEBUG_COMMPAGE_ENABLE_TRACE ;
 int KDEBUG_COMMPAGE_ENABLE_TYPEFILTER ;
 TYPE_1__ kd_ctrl_page ;
 scalar_t__ kdebug_enable ;

uint32_t
kdebug_commpage_state(void)
{
 if (kdebug_enable) {
  if (kd_ctrl_page.kdebug_flags & KDBG_TYPEFILTER_CHECK) {
   return KDEBUG_COMMPAGE_ENABLE_TYPEFILTER | KDEBUG_COMMPAGE_ENABLE_TRACE;
  }

  return KDEBUG_COMMPAGE_ENABLE_TRACE;
 }

 return 0;
}
