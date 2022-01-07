
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int x86_saved_state_t ;
struct TYPE_22__ {int trapno; int err; int rflags; scalar_t__ rip; int cpu; } ;
struct TYPE_23__ {TYPE_4__ isf; scalar_t__ cr2; } ;
typedef TYPE_5__ x86_saved_state64_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_6__* vm_map_t ;
typedef scalar_t__ user_addr_t ;
typedef TYPE_7__* thread_t ;
struct recovery {scalar_t__ fault_addr; int recover_addr; } ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_21__ {int specFlags; TYPE_1__* copy_window; } ;
struct TYPE_25__ {scalar_t__ map; int options; int recover; TYPE_3__ machine; } ;
struct TYPE_24__ {TYPE_2__* pmap; } ;
struct TYPE_20__ {scalar_t__ pm_cr3; } ;
struct TYPE_19__ {scalar_t__ user_base; } ;
struct TYPE_18__ {scalar_t__ cpu_copywindow_base; scalar_t__ cpu_pmap_pcid_enabled; } ;


 int CopyIOActive ;
 int DBG_FUNC_NONE ;
 int DBG_MACH_EXCP_KTRAP_x86 ;
 int EFL_AC ;
 int EFL_IF ;
 int EFL_TF ;
 scalar_t__ FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,unsigned int,unsigned int,int,scalar_t__,int ) ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int) ;
 scalar_t__ NBPDE ;
 scalar_t__ NCOPY_WINDOWS ;
 int NO_WATCHPOINTS ;
 scalar_t__ PAGE_SIZE ;
 TYPE_7__* THREAD_NULL ;
 int THREAD_UNINT ;
 int TH_OPT_DTRACE ;
 int T_PF_EXECUTE ;
 int T_PF_PROT ;
 int T_PF_WRITE ;
 int T_PREEMPT ;

 scalar_t__ VM_KERNEL_UNSLIDE (scalar_t__) ;
 int VM_KERN_MEMORY_NONE ;
 scalar_t__ VM_MAX_USER_PAGE_ADDRESS ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 scalar_t__ __improbable (int) ;
 scalar_t__ __probable (int) ;
 int ast_taken_kernel () ;
 int copy_window_fault (TYPE_7__*,TYPE_6__*,int) ;
 int cpu_number () ;
 TYPE_14__* current_cpu_datap () ;
 TYPE_7__* current_thread () ;
 int dtrace_tally_fault (scalar_t__) ;
 int fpSSEexterrflt () ;
 int fpUDflt (scalar_t__) ;
 int fpexterrflt () ;
 int fpextovrflt () ;
 int fpnoextflt () ;
 scalar_t__ get_cr3_base () ;
 int get_preemption_level () ;
 int is_saved_state32 (int *) ;
 int kdp_i386_trap (int,TYPE_5__*,scalar_t__,scalar_t__) ;
 scalar_t__ kernel_map ;
 int kprintf (char*) ;
 int ml_set_interrupts_enabled (scalar_t__) ;
 scalar_t__ no_shared_cr3 ;
 int pal_cli () ;
 int panic (char*,int *) ;
 int panic_trap (TYPE_5__*,int,scalar_t__) ;
 int pmap_assert (int) ;
 scalar_t__ pmap_smap_enabled ;
 scalar_t__ pmap_smep_enabled ;
 struct recovery* recover_table ;
 struct recovery* recover_table_end ;
 int reset_dr7 () ;
 TYPE_5__* saved_state64 (int *) ;
 int set_cr3_raw (scalar_t__) ;
 int set_recovery_ip (TYPE_5__*,int ) ;
 int sync_iss_to_iks (int *) ;
 scalar_t__ tempDTraceTrapHook (int,int *,uintptr_t*,int ) ;
 scalar_t__ vm_fault (TYPE_6__*,scalar_t__,int ,scalar_t__,int ,int ,int *,int ) ;

void
kernel_trap(
 x86_saved_state_t *state,
 uintptr_t *lo_spp)
{
 x86_saved_state64_t *saved_state;
 int code;
 user_addr_t vaddr;
 int type;
 vm_map_t map = 0;
 kern_return_t result = KERN_FAILURE;
 kern_return_t fault_result = KERN_SUCCESS;
 thread_t thread;
 boolean_t intr;
 vm_prot_t prot;
        struct recovery *rp;
 vm_offset_t kern_ip;



 int is_user;
 int trap_pl = get_preemption_level();

 thread = current_thread();

 if (__improbable(is_saved_state32(state)))
  panic("kernel_trap(%p) with 32-bit state", state);
 saved_state = saved_state64(state);


 saved_state->isf.cpu = cpu_number();

 vaddr = (user_addr_t)saved_state->cr2;
 type = saved_state->isf.trapno;
 code = (int)(saved_state->isf.err & 0xffff);
 intr = (saved_state->isf.rflags & EFL_IF) != 0;
 kern_ip = (vm_offset_t)saved_state->isf.rip;

 is_user = (vaddr < VM_MAX_USER_PAGE_ADDRESS);
 if (__improbable(T_PREEMPT == type)) {
  ast_taken_kernel();

  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (MACHDBG_CODE(DBG_MACH_EXCP_KTRAP_x86, type)) | DBG_FUNC_NONE,
   0, 0, 0, VM_KERNEL_UNSLIDE(kern_ip), 0);
  return;
 }

 user_addr_t kd_vaddr = is_user ? vaddr : VM_KERNEL_UNSLIDE(vaddr);
 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  (MACHDBG_CODE(DBG_MACH_EXCP_KTRAP_x86, type)) | DBG_FUNC_NONE,
  (unsigned)(kd_vaddr >> 32), (unsigned)kd_vaddr, is_user,
  VM_KERNEL_UNSLIDE(kern_ip), 0);


 if (129 == type) {



  map = kernel_map;

  if (__probable(thread != THREAD_NULL && thread->map != kernel_map)) {
   if (__probable(vaddr < VM_MAX_USER_PAGE_ADDRESS)) {

    map = thread->map;
    if (__improbable((code == (T_PF_PROT | T_PF_EXECUTE)) &&
     (pmap_smep_enabled) && (saved_state->isf.rip == vaddr))) {
     goto debugger_entry;
    }






    if (__improbable(code & T_PF_PROT &&
       pmap_smap_enabled &&
       (saved_state->isf.rflags & EFL_AC) == 0)) {
     goto debugger_entry;
    }






    if (no_shared_cr3 &&
        (thread->machine.specFlags&CopyIOActive) &&
        map->pmap->pm_cr3 != get_cr3_base()) {
     pmap_assert(current_cpu_datap()->cpu_pmap_pcid_enabled == FALSE);
     set_cr3_raw(map->pmap->pm_cr3);
     return;
    }
    if (__improbable(vaddr < PAGE_SIZE) &&
        ((thread->machine.specFlags & CopyIOActive) == 0)) {
     goto debugger_entry;
    }
   }

  }
 }

 (void) ml_set_interrupts_enabled(intr);

 switch (type) {

     case 130:
  fpnoextflt();
  return;

     case 134:
  fpextovrflt();
  return;

     case 135:
  fpexterrflt();
  return;

     case 128:
  fpSSEexterrflt();
  return;

     case 131:
  fpUDflt(kern_ip);
  goto debugger_entry;

     case 136:
      if ((saved_state->isf.rflags & EFL_TF) == 0 && NO_WATCHPOINTS)
      {





       reset_dr7();
       return;
      }
      goto debugger_entry;
     case 132:
       goto debugger_entry;
     case 129:
  prot = VM_PROT_READ;

  if (code & T_PF_WRITE)
          prot |= VM_PROT_WRITE;
  if (code & T_PF_EXECUTE)
          prot |= VM_PROT_EXECUTE;

  fault_result = result = vm_fault(map,
      vaddr,
      prot,
      FALSE, VM_KERN_MEMORY_NONE,
      THREAD_UNINT, ((void*)0), 0);

  if (result == KERN_SUCCESS) {
   return;
  }







     case 133:




         for (rp = recover_table; rp < recover_table_end; rp++) {
          if (kern_ip == rp->fault_addr) {
           set_recovery_ip(saved_state, rp->recover_addr);
    return;
   }
  }




  if (thread != THREAD_NULL && thread->recover) {
   set_recovery_ip(saved_state, thread->recover);
   thread->recover = 0;
   return;
  }






     default:




      if (type == 15) {
   kprintf("kernel_trap() ignoring spurious trap 15\n");
   return;
  }
debugger_entry:





  sync_iss_to_iks(state);




 }
 pal_cli();
 panic_trap(saved_state, trap_pl, fault_result);



}
