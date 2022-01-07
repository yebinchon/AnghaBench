
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ebp; int uesp; int eip; } ;
struct TYPE_7__ {int rsp; int rip; } ;
struct TYPE_8__ {int rbp; TYPE_1__ isf; } ;
struct TYPE_10__ {TYPE_3__ ss_32; TYPE_2__ ss_64; } ;
typedef TYPE_4__ x86_saved_state_t ;
typedef int user_addr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
typedef int * thread_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {size_t cpu_id; } ;
struct TYPE_11__ {int cpuc_dtrace_flags; } ;


 int ASSERT (int) ;
 TYPE_6__* CPU ;
 int volatile CPU_DTRACE_FAULT ;
 int VALID ;
 TYPE_5__* cpu_core ;
 int current_proc () ;
 int * current_thread () ;
 int dtrace_adjust_stack (scalar_t__**,int*,int *,int ) ;
 int dtrace_getustack_common (scalar_t__*,int,int ,int ) ;
 scalar_t__ dtrace_proc_selfpid () ;
 scalar_t__ find_user_regs (int *) ;
 int pal_register_cache_state (int *,int ) ;
 scalar_t__ proc_is64bit (int ) ;

void
dtrace_getupcstack(uint64_t *pcstack, int pcstack_limit)
{
 thread_t thread = current_thread();
 x86_saved_state_t *regs;
 user_addr_t pc, sp, fp;
 volatile uint16_t *flags =
     (volatile uint16_t *)&cpu_core[CPU->cpu_id].cpuc_dtrace_flags;
 int n;
 boolean_t is64Bit = proc_is64bit(current_proc());

 if (*flags & CPU_DTRACE_FAULT)
  return;

 if (pcstack_limit <= 0)
  return;




 if (thread == ((void*)0))
  goto zero;

 pal_register_cache_state(thread, VALID);
 regs = (x86_saved_state_t *)find_user_regs(thread);
 if (regs == ((void*)0))
  goto zero;

 *pcstack++ = (uint64_t)dtrace_proc_selfpid();
 pcstack_limit--;

 if (pcstack_limit <= 0)
  return;

 if (is64Bit) {
  pc = regs->ss_64.isf.rip;
  sp = regs->ss_64.isf.rsp;
  fp = regs->ss_64.rbp;
 } else {
  pc = regs->ss_32.eip;
  sp = regs->ss_32.uesp;
  fp = regs->ss_32.ebp;
 }






 (void)dtrace_adjust_stack(&pcstack, &pcstack_limit, &pc, sp);

 if(pcstack_limit <= 0)
     return;







 n = dtrace_getustack_common(pcstack, pcstack_limit, pc, fp);
 ASSERT(n >= 0);
 ASSERT(n <= pcstack_limit);

 pcstack += n;
 pcstack_limit -= n;

zero:
 while (pcstack_limit-- > 0)
  *pcstack++ = 0;
}
