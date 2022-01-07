
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t user_addr_t ;
typedef void* uint64_t ;
typedef int uint16_t ;
struct TYPE_8__ {int * gregs; } ;
struct TYPE_9__ {int uc_link; TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int * thread_t ;
struct frame32 {int dummy; } ;
struct frame {int dummy; } ;
typedef int siginfo_t ;
typedef int siginfo32_t ;
struct TYPE_10__ {size_t pc; size_t sp; } ;
typedef TYPE_3__ savearea_t ;
typedef int greg_t ;
struct TYPE_14__ {size_t cpu_id; } ;
struct TYPE_13__ {int cpuc_dtrace_flags; } ;
struct TYPE_12__ {uintptr_t lwp_oldcontext; } ;
struct TYPE_11__ {scalar_t__ p_model; } ;


 TYPE_7__* CPU ;
 int CPU_DTRACE_ENTRY ;
 int volatile CPU_DTRACE_FAULT ;
 scalar_t__ DATAMODEL_NATIVE ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 size_t EBP ;
 size_t EIP ;
 size_t REG_FP ;
 size_t REG_PC ;
 size_t RETURN_OFFSET ;
 TYPE_6__* cpu_core ;
 int * current_thread () ;
 void* dtrace_fulword (int *) ;
 void* dtrace_fuword32 (size_t) ;
 scalar_t__ dtrace_proc_selfpid () ;
 scalar_t__ find_user_regs (int *) ;
 TYPE_5__* lwp ;
 TYPE_4__* p ;

void
dtrace_getufpstack(uint64_t * pcstack, uint64_t * fpstack, int pcstack_limit)
{

 thread_t thread = current_thread();
 savearea_t *regs;
 user_addr_t pc, sp;

 volatile uint16_t *flags = (volatile uint16_t *) & cpu_core[CPU->cpu_id].cpuc_dtrace_flags;






 if (*flags & CPU_DTRACE_FAULT)
  return;

 if (pcstack_limit <= 0)
  return;




 if (thread == ((void*)0))
  goto zero;

 regs = (savearea_t *) find_user_regs(thread);
 if (regs == ((void*)0))
  goto zero;

 *pcstack++ = (uint64_t)dtrace_proc_selfpid();
 pcstack_limit--;

 if (pcstack_limit <= 0)
  return;

 pc = regs->pc;
 sp = regs->sp;
 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
  *pcstack++ = (uint64_t) pc;
  *fpstack++ = 0;
  pcstack_limit--;
  if (pcstack_limit <= 0)
   return;

  pc = dtrace_fuword32(sp);
 }
 while (pc != 0 && sp != 0) {
  *pcstack++ = (uint64_t) pc;
  *fpstack++ = sp;
  pcstack_limit--;
  if (pcstack_limit <= 0)
   break;
  {
   pc = dtrace_fuword32((sp + RETURN_OFFSET));
   sp = dtrace_fuword32(sp);
  }
 }

zero:
 while (pcstack_limit-- > 0)
  *pcstack++ = 0ULL;
}
