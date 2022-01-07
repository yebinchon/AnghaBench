
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fbtp_roffset; int fbtp_savedval; int fbtp_id; scalar_t__ fbtp_patchpoint; struct TYPE_5__* fbtp_hashnext; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int arm_saved_state_t ;
struct TYPE_6__ {int ss; } ;
typedef TYPE_2__ arm_context_t ;
struct TYPE_7__ {int cpu_dtrace_invop_underway; void* cpu_dtrace_caller; } ;


 TYPE_4__* CPU ;
 size_t FBT_ADDR2NDX (uintptr_t) ;
 int dtrace_probe (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 TYPE_1__** fbt_probetab ;
 void* get_saved_state_lr (int *) ;
 uintptr_t get_saved_state_reg (int *,int) ;

int
fbt_invop(uintptr_t addr, uintptr_t * stack, uintptr_t rval)
{
 fbt_probe_t *fbt = fbt_probetab[FBT_ADDR2NDX(addr)];

 for (; fbt != ((void*)0); fbt = fbt->fbtp_hashnext) {
  if ((uintptr_t) fbt->fbtp_patchpoint == addr) {
   if (0 == CPU->cpu_dtrace_invop_underway) {
    CPU->cpu_dtrace_invop_underway = 1;


    if (fbt->fbtp_roffset == 0) {
     arm_saved_state_t *regs = (arm_saved_state_t *)(&((arm_context_t *)stack)->ss);
     CPU->cpu_dtrace_caller = get_saved_state_lr(regs);
     dtrace_probe(fbt->fbtp_id, get_saved_state_reg(regs, 0), get_saved_state_reg(regs, 1),
         get_saved_state_reg(regs, 2), get_saved_state_reg(regs, 3),get_saved_state_reg(regs, 4));
     CPU->cpu_dtrace_caller = 0;
    } else {
     arm_saved_state_t *regs = (arm_saved_state_t *)(&((arm_context_t *)stack)->ss);

     CPU->cpu_dtrace_caller = get_saved_state_lr(regs);
     dtrace_probe(fbt->fbtp_id, fbt->fbtp_roffset, rval, 0, 0, 0);
     CPU->cpu_dtrace_caller = 0;
    }
    CPU->cpu_dtrace_invop_underway = 0;
   }






   return (fbt->fbtp_savedval);
  }
 }

 return (0);
}
