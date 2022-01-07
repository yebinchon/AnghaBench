
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


typedef scalar_t__ user_addr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct TYPE_9__ {int * gregs; } ;
struct TYPE_11__ {int uc_link; TYPE_1__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
struct TYPE_10__ {int * gregs; } ;
struct TYPE_12__ {int uc_link; TYPE_2__ uc_mcontext; } ;
typedef TYPE_4__ ucontext32_t ;
struct frame32 {int dummy; } ;
struct frame {int dummy; } ;
typedef int siginfo_t ;
typedef int siginfo32_t ;
typedef int greg_t ;
typedef int greg32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_16__ {size_t cpu_id; } ;
struct TYPE_15__ {int cpuc_dtrace_flags; } ;
struct TYPE_14__ {uintptr_t lwp_oldcontext; } ;
struct TYPE_13__ {scalar_t__ p_model; } ;


 int ASSERT (int) ;
 TYPE_8__* CPU ;
 int volatile CPU_DTRACE_FAULT ;
 scalar_t__ DATAMODEL_NATIVE ;
 size_t EBP ;
 size_t EIP ;
 size_t REG_FP ;
 size_t REG_PC ;
 scalar_t__ RETURN_OFFSET ;
 scalar_t__ RETURN_OFFSET64 ;
 TYPE_7__* cpu_core ;
 int current_proc () ;
 void* dtrace_fulword (int *) ;
 void* dtrace_fuword32 (scalar_t__) ;
 scalar_t__ dtrace_fuword64 (scalar_t__) ;
 TYPE_6__* lwp ;
 TYPE_5__* p ;
 scalar_t__ proc_is64bit (int ) ;

__attribute__((used)) static int
dtrace_getustack_common(uint64_t *pcstack, int pcstack_limit, user_addr_t pc,
    user_addr_t sp)
{







 int ret = 0;
 boolean_t is64Bit = proc_is64bit(current_proc());

 ASSERT(pcstack == ((void*)0) || pcstack_limit > 0);
 while (pc != 0) {
  ret++;
  if (pcstack != ((void*)0)) {
   *pcstack++ = (uint64_t)pc;
   pcstack_limit--;
   if (pcstack_limit <= 0)
    break;
  }

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

 return (ret);
}
