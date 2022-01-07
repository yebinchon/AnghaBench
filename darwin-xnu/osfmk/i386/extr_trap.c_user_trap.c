
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_16__ {int trapno; scalar_t__ rip; scalar_t__ err; void* cpu; } ;
struct TYPE_18__ {TYPE_1__ isf; scalar_t__ cr2; } ;
typedef TYPE_3__ x86_saved_state64_t ;
struct TYPE_19__ {int trapno; int err; scalar_t__ eip; scalar_t__ cr2; void* cpu; } ;
typedef TYPE_4__ x86_saved_state32_t ;
struct TYPE_20__ {unsigned long dr6; } ;
typedef TYPE_5__ x86_debug_state64_t ;
typedef TYPE_5__ x86_debug_state32_t ;
typedef int vm_prot_t ;
typedef int user_addr_t ;
typedef void* uint32_t ;
typedef TYPE_7__* thread_t ;
typedef TYPE_8__* pcb_t ;
typedef int mach_exception_subcode_t ;
typedef scalar_t__ mach_exception_code_t ;
typedef int kern_return_t ;
struct TYPE_22__ {TYPE_5__* ids; } ;
struct TYPE_17__ {scalar_t__ ids; } ;
struct TYPE_21__ {int map; TYPE_2__ machine; } ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_EXCP_UTRAP_x86 ;
 int DEBUG_KPRINT_SYSCALL_MASK (int,char*,int,int ,int,void*,void*) ;
 int EXC_ARITHMETIC ;
 int EXC_BAD_ACCESS ;
 int EXC_BAD_INSTRUCTION ;
 int EXC_BREAKPOINT ;
 scalar_t__ EXC_I386_BOUND ;
 scalar_t__ EXC_I386_BPT ;
 scalar_t__ EXC_I386_DIV ;
 scalar_t__ EXC_I386_GPFLT ;
 scalar_t__ EXC_I386_INTO ;
 scalar_t__ EXC_I386_INVOP ;
 scalar_t__ EXC_I386_INVTSSFLT ;
 scalar_t__ EXC_I386_SEGNPFLT ;
 scalar_t__ EXC_I386_SGL ;
 scalar_t__ EXC_I386_STKFLT ;
 int EXC_SOFTWARE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;
 int KERN_ABORTED ;
 int KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int) ;
 int THREAD_ABORTSAFE ;
 TYPE_8__* THREAD_TO_PCB (TYPE_7__*) ;
 int T_PF_EXECUTE ;
 int T_PF_WRITE ;



 int VM_KERN_MEMORY_NONE ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int __improbable (int) ;
 int __probable (int) ;
 int assert (int) ;
 void* cpu_number () ;
 TYPE_7__* current_thread () ;
 int dtrace_user_probe (int *) ;
 int fpSSEexterrflt () ;
 int fpUDflt (int) ;
 int fpexterrflt () ;
 int fpextovrflt () ;
 int fpnoextflt () ;
 int fsigcs ;
 int fsigns ;
 void** fsigs ;
 int i386_exception (int,scalar_t__,int) ;
 scalar_t__ is_saved_state32 (int *) ;
 scalar_t__ is_saved_state64 (int *) ;
 int pal_sti () ;
 int panic (char*,...) ;
 TYPE_4__* saved_state32 (int *) ;
 TYPE_3__* saved_state64 (int *) ;
 int thread_exception_return () ;
 void* thread_fpsimd_hash (TYPE_7__*) ;
 scalar_t__ thread_is_64bit_addr (TYPE_7__*) ;
 int * trap_type ;
 int user_page_fault_continue (int ) ;
 int vm_fault (int ,int,int ,int ,int ,int ,int *,int ) ;

void
user_trap(
 x86_saved_state_t *saved_state)
{
 int exc;
 int err;
 mach_exception_code_t code;
 mach_exception_subcode_t subcode;
 int type;
 user_addr_t vaddr;
 vm_prot_t prot;
 thread_t thread = current_thread();
 kern_return_t kret;
 user_addr_t rip;
 unsigned long dr6 = 0;

 assert((is_saved_state32(saved_state) && !thread_is_64bit_addr(thread)) ||
        (is_saved_state64(saved_state) && thread_is_64bit_addr(thread)));

 if (is_saved_state64(saved_state)) {
         x86_saved_state64_t *regs;

  regs = saved_state64(saved_state);


  regs->isf.cpu = cpu_number();

  type = regs->isf.trapno;
  err = (int)regs->isf.err & 0xffff;
  vaddr = (user_addr_t)regs->cr2;
  rip = (user_addr_t)regs->isf.rip;
 } else {
  x86_saved_state32_t *regs;

  regs = saved_state32(saved_state);


  regs->cpu = cpu_number();

  type = regs->trapno;
  err = regs->err & 0xffff;
  vaddr = (user_addr_t)regs->cr2;
  rip = (user_addr_t)regs->eip;
 }

 if ((type == 143) && thread->machine.ids) {
  unsigned long clear = 0;



  __asm__ volatile ("mov %%db6, %0" : "=r" (dr6));
  __asm__ volatile ("mov %0, %%db6" : : "r" (clear));
 }

 pal_sti();

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  (MACHDBG_CODE(DBG_MACH_EXCP_UTRAP_x86, type)) | DBG_FUNC_NONE,
  (unsigned)(vaddr>>32), (unsigned)vaddr,
  (unsigned)(rip>>32), (unsigned)rip, 0);

 code = 0;
 subcode = 0;
 exc = 0;
 DEBUG_KPRINT_SYSCALL_MASK(1,
  "user_trap: type=0x%x(%s) err=0x%x cr2=%p rip=%p\n",
  type, trap_type[type], err, (void *)(long) vaddr, (void *)(long) rip);

 switch (type) {

     case 142:
  exc = EXC_ARITHMETIC;
  code = EXC_I386_DIV;
  break;

     case 143:
  {
   pcb_t pcb;




   pcb = THREAD_TO_PCB(thread);
   if (pcb->ids) {






    if (thread_is_64bit_addr(thread)) {
     x86_debug_state64_t *ids = pcb->ids;
     ids->dr6 = dr6;
    } else {
     x86_debug_state32_t *ids = pcb->ids;
     ids->dr6 = (uint32_t) dr6;
    }
   }
   exc = EXC_BREAKPOINT;
   code = EXC_I386_SGL;
   break;
  }
     case 137:




  exc = EXC_BREAKPOINT;
  code = EXC_I386_BPT;
  break;

     case 132:
  exc = EXC_ARITHMETIC;
  code = EXC_I386_INTO;
  break;

     case 133:
  exc = EXC_SOFTWARE;
  code = EXC_I386_BOUND;
  break;

     case 136:

  fpUDflt(rip);

  exc = EXC_BAD_INSTRUCTION;
  code = EXC_I386_INVOP;
  break;

     case 134:
  fpnoextflt();
  return;

     case 139:
  fpextovrflt();
  return;

     case 135:
  exc = EXC_BAD_INSTRUCTION;
  code = EXC_I386_INVTSSFLT;
  subcode = err;
  break;

     case 130:
  exc = EXC_BAD_INSTRUCTION;
  code = EXC_I386_SEGNPFLT;
  subcode = err;
  break;

     case 128:
  exc = EXC_BAD_INSTRUCTION;
  code = EXC_I386_STKFLT;
  subcode = err;
  break;

     case 138:
  exc = EXC_BAD_ACCESS;
  code = EXC_I386_GPFLT;
  subcode = err;
  break;

     case 131:
     {
      prot = VM_PROT_READ;

  if (err & T_PF_WRITE)
          prot |= VM_PROT_WRITE;
  if (__improbable(err & T_PF_EXECUTE))
          prot |= VM_PROT_EXECUTE;







  kret = vm_fault(thread->map,
    vaddr,
    prot, FALSE, VM_KERN_MEMORY_NONE,
    THREAD_ABORTSAFE, ((void*)0), 0);
  if (__probable((kret == KERN_SUCCESS) || (kret == KERN_ABORTED))) {
   thread_exception_return();

  }

         user_page_fault_continue(kret);
     }
  break;

     case 129:
  fpSSEexterrflt();
  return;


     case 140:
  fpexterrflt();
  return;

     case 141:
  exc = EXC_BAD_INSTRUCTION;
  code = EXC_I386_INVOP;
  break;

     default:
  panic("Unexpected user trap, type %d", type);
  return;
 }



 i386_exception(exc, code, subcode);

}
