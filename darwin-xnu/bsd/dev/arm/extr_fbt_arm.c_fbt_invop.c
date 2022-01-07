
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct arm_vfpsaved_state {int dummy; } ;
struct arm_saved_state {int sp; int cpsr; uintptr_t* r; scalar_t__ lr; } ;
struct TYPE_4__ {scalar_t__ fbtp_roffset; int fbtp_savedval; int fbtp_id; scalar_t__ fbtp_patchpoint; struct TYPE_4__* fbtp_hashnext; } ;
typedef TYPE_1__ fbt_probe_t ;
struct TYPE_5__ {int cpu_dtrace_invop_underway; scalar_t__ cpu_dtrace_caller; } ;


 TYPE_3__* CPU ;
 int DTRACE_INVOP_NOP ;
 size_t FBT_ADDR2NDX (uintptr_t) ;
 scalar_t__ FBT_IS_THUMB_SET_R7 (int) ;
 int FBT_THUMB_SET_R7_OFFSET (int) ;
 int PSR_FIQ_MODE ;
 int PSR_MODE_MASK ;
 int VFPSAVE_ALIGN_DTRACE ;
 int clear_itstate (int*) ;
 scalar_t__ dtrace_arm_condition_true (int,int) ;
 int dtrace_probe (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 TYPE_1__** fbt_probetab ;
 int get_itstate (int) ;
 int panic (char*,unsigned int) ;

int
fbt_invop(uintptr_t addr, uintptr_t * stack, uintptr_t rval)
{
 fbt_probe_t *fbt = fbt_probetab[FBT_ADDR2NDX(addr)];

 for (; fbt != ((void*)0); fbt = fbt->fbtp_hashnext) {
  if ((uintptr_t) fbt->fbtp_patchpoint == addr) {
   if (0 == CPU->cpu_dtrace_invop_underway) {
    CPU->cpu_dtrace_invop_underway = 1;


    struct arm_saved_state* regs = (struct arm_saved_state*) stack;
    uintptr_t stack4 = *((uintptr_t*) regs->sp);

    if ((regs->cpsr & PSR_MODE_MASK) == PSR_FIQ_MODE) {






     panic("dtrace: fbt: The probe at %08x was called from FIQ_MODE",(unsigned) addr);
    }





    uint32_t itstate = get_itstate(regs->cpsr);
    if ((itstate & 0x7) != 0) {
     panic("dtrace: fbt: Instruction stream error: Middle of IT block at %08x",(unsigned) addr);
    }

    if (fbt->fbtp_roffset == 0) {
     uint32_t offset = ((uint32_t) regs) + sizeof(struct arm_saved_state);





     if (FBT_IS_THUMB_SET_R7(fbt->fbtp_savedval))
      *((uint32_t*) offset) = regs->sp + FBT_THUMB_SET_R7_OFFSET(fbt->fbtp_savedval);
     else
      *((uint32_t*) offset) = regs->sp;

     CPU->cpu_dtrace_caller = regs->lr;
     dtrace_probe(fbt->fbtp_id, regs->r[0], regs->r[1], regs->r[2], regs->r[3], stack4);
     CPU->cpu_dtrace_caller = 0;
    } else {

     if (itstate != 0) {




      int condition_it = (itstate & 0xF0) >> 4;

      if (dtrace_arm_condition_true(condition_it, regs->cpsr) == 0) {

       clear_itstate(&regs->cpsr);
       CPU->cpu_dtrace_invop_underway = 0;
       return DTRACE_INVOP_NOP;
      }
     }

     dtrace_probe(fbt->fbtp_id, fbt->fbtp_roffset, rval, 0, 0, 0);
     CPU->cpu_dtrace_caller = 0;


     clear_itstate(&regs->cpsr);
    }
    CPU->cpu_dtrace_invop_underway = 0;
   }






   return (fbt->fbtp_savedval);
  }
 }

 return (0);
}
