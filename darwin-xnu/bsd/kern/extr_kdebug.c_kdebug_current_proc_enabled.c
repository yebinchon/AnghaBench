
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int boolean_t ;
struct TYPE_5__ {int kdebug_flags; } ;
struct TYPE_4__ {scalar_t__ p_kdebug; } ;


 int DBG_MACH_SCHED ;
 scalar_t__ DBG_TRACE ;
 int FALSE ;
 int KDBG_CSC_MASK ;
 scalar_t__ KDBG_EXTRACT_CLASS (int) ;
 int KDBG_PIDCHECK ;
 int KDBG_PIDEXCLUDE ;
 int MACHDBG_CODE (int ,int ) ;
 int TRUE ;
 TYPE_1__* current_proc () ;
 TYPE_2__ kd_ctrl_page ;
 scalar_t__ ml_at_interrupt_context () ;

__attribute__((used)) static boolean_t
kdebug_current_proc_enabled(uint32_t debugid)
{

 if (ml_at_interrupt_context()) {
  return TRUE;
 }


 if ((KDBG_EXTRACT_CLASS(debugid) == DBG_TRACE ||
     (debugid & KDBG_CSC_MASK) == MACHDBG_CODE(DBG_MACH_SCHED, 0)))
 {
  return TRUE;
 }

 if (kd_ctrl_page.kdebug_flags & KDBG_PIDCHECK) {
  proc_t cur_proc = current_proc();


  if (cur_proc && !(cur_proc->p_kdebug)) {
   return FALSE;
  }
 } else if (kd_ctrl_page.kdebug_flags & KDBG_PIDEXCLUDE) {
  proc_t cur_proc = current_proc();


  if (cur_proc && cur_proc->p_kdebug) {
   return FALSE;
  }
 }

 return TRUE;
}
