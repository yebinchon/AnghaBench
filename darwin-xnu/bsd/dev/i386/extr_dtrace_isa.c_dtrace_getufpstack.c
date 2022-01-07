
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t user_addr_t ;
typedef void* uint64_t ;
typedef int uint16_t ;
struct TYPE_10__ {int * gregs; } ;
struct TYPE_11__ {int uc_link; TYPE_2__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
typedef int * thread_t ;
struct frame32 {int dummy; } ;
struct frame {int dummy; } ;
typedef int siginfo_t ;
typedef int siginfo32_t ;
struct TYPE_9__ {size_t eip; size_t ebp; } ;
struct TYPE_12__ {TYPE_1__ ss_32; } ;
typedef TYPE_4__ savearea_t ;
typedef int greg_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_16__ {size_t cpu_id; } ;
struct TYPE_15__ {int cpuc_dtrace_flags; } ;
struct TYPE_14__ {uintptr_t lwp_oldcontext; } ;
struct TYPE_13__ {scalar_t__ p_model; } ;


 TYPE_8__* CPU ;
 int volatile CPU_DTRACE_FAULT ;
 scalar_t__ DATAMODEL_NATIVE ;
 size_t EBP ;
 size_t EIP ;
 size_t REG_FP ;
 size_t REG_PC ;
 size_t RETURN_OFFSET ;
 size_t RETURN_OFFSET64 ;
 TYPE_7__* cpu_core ;
 int current_proc () ;
 int * current_thread () ;
 int dtrace_adjust_stack (void***,int*,size_t*,size_t) ;
 void* dtrace_fulword (int *) ;
 void* dtrace_fuword32 (size_t) ;
 size_t dtrace_fuword64 (size_t) ;
 scalar_t__ dtrace_proc_selfpid () ;
 scalar_t__ find_user_regs (int *) ;
 TYPE_6__* lwp ;
 TYPE_5__* p ;
 scalar_t__ proc_is64bit (int ) ;

void
dtrace_getufpstack(uint64_t *pcstack, uint64_t *fpstack, int pcstack_limit)
{
 thread_t thread = current_thread();
 savearea_t *regs;
 user_addr_t pc, sp;
 volatile uint16_t *flags =
     (volatile uint16_t *)&cpu_core[CPU->cpu_id].cpuc_dtrace_flags;




 boolean_t is64Bit = proc_is64bit(current_proc());

 if (*flags & CPU_DTRACE_FAULT)
  return;

 if (pcstack_limit <= 0)
  return;




 if (thread == ((void*)0))
  goto zero;

 regs = (savearea_t *)find_user_regs(thread);
 if (regs == ((void*)0))
  goto zero;

 *pcstack++ = (uint64_t)dtrace_proc_selfpid();
 pcstack_limit--;

 if (pcstack_limit <= 0)
  return;

 pc = regs->ss_32.eip;
 sp = regs->ss_32.ebp;
 if(dtrace_adjust_stack(&pcstack, &pcstack_limit, &pc, sp) == 1) {



     *fpstack++ = 0;
     if (pcstack_limit <= 0)
  return;
 }

 while (pc != 0) {
  *pcstack++ = (uint64_t)pc;
  *fpstack++ = sp;
  pcstack_limit--;
  if (pcstack_limit <= 0)
   break;

  if (sp == 0)
   break;
  {
   if (is64Bit) {
    pc = dtrace_fuword64((sp + RETURN_OFFSET64));
    sp = dtrace_fuword64(sp);
   } else {
    pc = dtrace_fuword32((sp + RETURN_OFFSET));
    sp = dtrace_fuword32(sp);
   }
  }
 }

zero:
 while (pcstack_limit-- > 0)
  *pcstack++ = 0;
}
