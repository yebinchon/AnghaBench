
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef void* uint64_t ;
typedef int uint16_t ;
typedef int * thread_t ;
struct TYPE_4__ {int * r; scalar_t__ lr; scalar_t__ sp; scalar_t__ pc; } ;
typedef TYPE_1__ savearea_t ;
struct TYPE_6__ {size_t cpu_id; } ;
struct TYPE_5__ {int cpuc_dtrace_flags; } ;


 int ASSERT (int) ;
 TYPE_3__* CPU ;
 int CPU_DTRACE_ENTRY ;
 int volatile CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 TYPE_2__* cpu_core ;
 int * current_thread () ;
 int dtrace_getustack_common (void**,int,scalar_t__,int ) ;
 scalar_t__ dtrace_proc_selfpid () ;
 scalar_t__ find_user_regs (int *) ;

void
dtrace_getupcstack(uint64_t * pcstack, int pcstack_limit)
{
 thread_t thread = current_thread();
 savearea_t *regs;
 user_addr_t pc, sp;
 volatile uint16_t *flags = (volatile uint16_t *) & cpu_core[CPU->cpu_id].cpuc_dtrace_flags;
 int n;

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
  pcstack_limit--;
  if (pcstack_limit <= 0)
   return;

  pc = regs->lr;
 }

 n = dtrace_getustack_common(pcstack, pcstack_limit, pc, regs->r[7]);

 ASSERT(n >= 0);
 ASSERT(n <= pcstack_limit);

 pcstack += n;
 pcstack_limit -= n;

zero:
 while (pcstack_limit-- > 0)
  *pcstack++ = 0ULL;
}
