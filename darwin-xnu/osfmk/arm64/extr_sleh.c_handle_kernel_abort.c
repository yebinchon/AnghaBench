
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef int uint32_t ;
typedef TYPE_2__* thread_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ fault_status_t ;
typedef int boolean_t ;
typedef int arm_saved_state_t ;
struct TYPE_8__ {int options; TYPE_1__* map; } ;
struct TYPE_7__ {int pmap; } ;


 int FALSE ;
 scalar_t__ FSC_SYNC_PARITY ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_PROTECTION_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int PSR64_PAN ;
 int THREAD_ABORTSAFE ;
 TYPE_2__* THREAD_NULL ;
 int THREAD_UNINT ;
 int TH_OPT_DTRACE ;
 scalar_t__ VM_KERNEL_ADDRESS (scalar_t__) ;
 int VM_KERN_MEMORY_NONE ;
 int arm64_platform_error (int *,int ,scalar_t__) ;
 scalar_t__ arm_fast_fault (int ,int ,int ,int ) ;
 TYPE_2__* current_thread () ;
 scalar_t__ dtrace_tally_fault (scalar_t__) ;
 scalar_t__ gVirtBase ;
 int get_saved_state_cpsr (int *) ;
 scalar_t__ get_saved_state_pc (int *) ;
 scalar_t__ is_alignment_fault (scalar_t__) ;
 scalar_t__ is_pan_fault (int *,int ,scalar_t__,scalar_t__) ;
 scalar_t__ is_parity_error (scalar_t__) ;
 scalar_t__ is_permission_fault (scalar_t__) ;
 int is_translation_fault (scalar_t__) ;
 scalar_t__ is_vm_fault (scalar_t__) ;
 TYPE_1__* kernel_map ;
 int kprintf (char*,scalar_t__) ;
 scalar_t__ ml_at_interrupt_context () ;
 int ml_set_interrupts_enabled (int ) ;
 int pan_exception_level ;
 char pan_fault_value ;
 scalar_t__ pan_ro_addr ;
 scalar_t__ pan_test_addr ;
 int panic_with_thread_kernel_state (char*,int *) ;
 scalar_t__ pgtrace_enabled ;
 scalar_t__ pmap_pgtrace_fault (int ,scalar_t__,int *) ;
 int set_saved_state_cpsr (int *,int) ;
 int set_saved_state_pc (int *,scalar_t__) ;
 scalar_t__ static_memory_end ;
 int trunc_page (scalar_t__) ;
 scalar_t__ vm_fault (TYPE_1__*,scalar_t__,int ,int ,int ,int,int *,int ) ;

__attribute__((used)) static void
handle_kernel_abort(arm_saved_state_t *state, uint32_t esr, vm_offset_t fault_addr,
     fault_status_t fault_code, vm_prot_t fault_type, vm_offset_t recover)
{
 thread_t thread = current_thread();
 (void)esr;
 if (ml_at_interrupt_context())
  panic_with_thread_kernel_state("Unexpected abort while on interrupt stack.", state);


 if (is_vm_fault(fault_code)) {
  kern_return_t result = KERN_FAILURE;
  vm_map_t map;
  int interruptible;
  if (fault_addr >= gVirtBase && fault_addr < static_memory_end) {
   panic_with_thread_kernel_state("Unexpected fault in kernel static region\n",state);
  }

  if (VM_KERNEL_ADDRESS(fault_addr) || thread == THREAD_NULL) {
   map = kernel_map;
   interruptible = THREAD_UNINT;
  } else {
   map = thread->map;
   interruptible = THREAD_ABORTSAFE;
  }
  if (!is_translation_fault(fault_code)) {
   result = arm_fast_fault(map->pmap, trunc_page(fault_addr), fault_type, FALSE);
   if (result == KERN_SUCCESS) return;
  }

  if (result != KERN_PROTECTION_FAILURE)
  {



   result = vm_fault(map, fault_addr, fault_type,
                                         FALSE, VM_KERN_MEMORY_NONE, interruptible,
                                       ((void*)0), 0);
  }

  if (result == KERN_SUCCESS) return;




  if (recover) {
   set_saved_state_pc(state, recover);
   return;
  }
 } else if (is_alignment_fault(fault_code)) {
  panic_with_thread_kernel_state("Unaligned kernel data abort.", state);
 } else if (is_parity_error(fault_code)) {






  panic_with_thread_kernel_state("Kernel parity error.", state);

 } else {
  kprintf("Unclassified kernel abort (fault_code=0x%x)\n", fault_code);
 }

 panic_with_thread_kernel_state("Kernel data abort.", state);
}
