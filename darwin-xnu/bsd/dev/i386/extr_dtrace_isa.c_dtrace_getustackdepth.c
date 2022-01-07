
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ebp; int uesp; int eip; } ;
struct TYPE_5__ {int rsp; int rip; } ;
struct TYPE_6__ {int rbp; TYPE_1__ isf; } ;
struct TYPE_8__ {TYPE_3__ ss_32; TYPE_2__ ss_64; } ;
typedef TYPE_4__ x86_saved_state_t ;
typedef int user_addr_t ;
typedef int * thread_t ;
typedef scalar_t__ boolean_t ;


 int CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 int VALID ;
 int current_proc () ;
 int * current_thread () ;
 int dtrace_adjust_stack (int *,int *,int *,int ) ;
 scalar_t__ dtrace_getustack_common (int *,int ,int ,int ) ;
 scalar_t__ find_user_regs (int *) ;
 int pal_register_cache_state (int *,int ) ;
 scalar_t__ proc_is64bit (int ) ;

int
dtrace_getustackdepth(void)
{
 thread_t thread = current_thread();
 x86_saved_state_t *regs;
 user_addr_t pc, sp, fp;
 int n = 0;
 boolean_t is64Bit = proc_is64bit(current_proc());

 if (thread == ((void*)0))
  return 0;

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_FAULT))
  return (-1);

 pal_register_cache_state(thread, VALID);
 regs = (x86_saved_state_t *)find_user_regs(thread);
 if (regs == ((void*)0))
  return 0;

 if (is64Bit) {
  pc = regs->ss_64.isf.rip;
  sp = regs->ss_64.isf.rsp;
  fp = regs->ss_64.rbp;
 } else {
  pc = regs->ss_32.eip;
  sp = regs->ss_32.uesp;
  fp = regs->ss_32.ebp;
 }

 if (dtrace_adjust_stack(((void*)0), ((void*)0), &pc, sp) == 1) {







     n++;
 }
 n += dtrace_getustack_common(((void*)0), 0, pc, fp);

 return (n);
}
