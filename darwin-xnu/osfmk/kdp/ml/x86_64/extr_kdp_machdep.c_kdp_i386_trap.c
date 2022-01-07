
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rflags; scalar_t__ err; int rip; } ;
struct TYPE_8__ {TYPE_1__ isf; int cr2; } ;
typedef TYPE_2__ x86_saved_state64_t ;
typedef scalar_t__ vm_offset_t ;
typedef unsigned int kern_return_t ;
typedef int boolean_t ;
struct TYPE_10__ {TYPE_2__* cpu_fatal_trap_state; TYPE_2__* cpu_post_fatal_trap_state; } ;
struct TYPE_9__ {int is_conn; } ;


 int EFL_TF ;
 unsigned int EXC_ARITHMETIC ;
 unsigned int EXC_BAD_ACCESS ;
 unsigned int EXC_BAD_INSTRUCTION ;
 unsigned int EXC_BREAKPOINT ;
 unsigned int EXC_I386_ALIGNFLT ;
 unsigned int EXC_I386_BOUNDFLT ;
 unsigned int EXC_I386_BPTFLT ;
 unsigned int EXC_I386_DIVERR ;
 unsigned int EXC_I386_GPFLT ;
 unsigned int EXC_I386_INTOFLT ;
 unsigned int EXC_I386_INVOPFLT ;
 unsigned int EXC_I386_SEGNPFLT ;
 unsigned int EXC_I386_STKFLT ;
 unsigned int EXC_SOFTWARE ;
 int FALSE ;
 int TRUE ;
 TYPE_6__* current_cpu_datap () ;
 int disable_preemption () ;
 int enable_preemption () ;
 int enable_preemption_no_check () ;
 int handle_debugger_trap (unsigned int,unsigned int,unsigned int,TYPE_2__*) ;
 TYPE_4__ kdp ;
 int kprintf (char*,unsigned int,int ,int ) ;
 int ml_set_interrupts_enabled (int ) ;

boolean_t
kdp_i386_trap(
    unsigned int trapno,
    x86_saved_state64_t *saved_state,
    kern_return_t result,
    vm_offset_t va
)
{
    unsigned int exception, code, subcode = 0;
    boolean_t prev_interrupts_state;

    if (trapno != 135 && trapno != 138) {
     kprintf("Debugger: Unexpected kernel trap number: "
  "0x%x, RIP: 0x%llx, CR2: 0x%llx\n",
  trapno, saved_state->isf.rip, saved_state->cr2);
 if (!kdp.is_conn)
     return FALSE;
    }

    prev_interrupts_state = ml_set_interrupts_enabled(FALSE);
    disable_preemption();

    if (saved_state->isf.rflags & EFL_TF) {
     enable_preemption_no_check();
    }

    switch (trapno) {

    case 137:
 exception = EXC_ARITHMETIC;
 code = EXC_I386_DIVERR;
 break;

    case 132:
 exception = EXC_SOFTWARE;
 code = EXC_I386_INTOFLT;
 break;

    case 133:
 exception = EXC_ARITHMETIC;
 code = EXC_I386_BOUNDFLT;
 break;

    case 134:
 exception = EXC_BAD_INSTRUCTION;
 code = EXC_I386_INVOPFLT;
 break;

    case 130:
 exception = EXC_BAD_INSTRUCTION;
 code = EXC_I386_SEGNPFLT;
 subcode = (unsigned int)saved_state->isf.err;
 break;

    case 129:
 exception = EXC_BAD_INSTRUCTION;
 code = EXC_I386_STKFLT;
 subcode = (unsigned int)saved_state->isf.err;
 break;

    case 136:
 exception = EXC_BAD_INSTRUCTION;
 code = EXC_I386_GPFLT;
 subcode = (unsigned int)saved_state->isf.err;
 break;

    case 131:
     exception = EXC_BAD_ACCESS;
 code = result;
 subcode = (unsigned int)va;
 break;

    case 128:
 exception = EXC_SOFTWARE;
 code = EXC_I386_ALIGNFLT;
 break;

    case 138:
    case 135:
 exception = EXC_BREAKPOINT;
 code = EXC_I386_BPTFLT;
 break;

    default:
     exception = EXC_BAD_INSTRUCTION;
 code = trapno;
 break;
    }

    if (current_cpu_datap()->cpu_fatal_trap_state) {
     current_cpu_datap()->cpu_post_fatal_trap_state = saved_state;
     saved_state = current_cpu_datap()->cpu_fatal_trap_state;
    }

    handle_debugger_trap(exception, code, subcode, saved_state);

    enable_preemption();
    ml_set_interrupts_enabled(prev_interrupts_state);



    if (saved_state->isf.rflags & EFL_TF) {
     disable_preemption();
    }

    return TRUE;
}
