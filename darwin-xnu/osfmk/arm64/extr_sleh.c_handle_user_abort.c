
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef void* vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef int uint32_t ;
typedef TYPE_2__* thread_t ;
typedef int mach_msg_type_number_t ;
typedef void* mach_exception_data_type_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ fault_status_t ;
typedef int exception_type_t ;
typedef int boolean_t ;
typedef int arm_saved_state_t ;
struct TYPE_7__ {int options; TYPE_1__* map; int iotier_override; } ;
struct TYPE_6__ {int pmap; } ;


 void* EXC_ARM_DA_ALIGN ;
 int EXC_BAD_ACCESS ;
 int FALSE ;
 scalar_t__ FSC_SYNC_PARITY ;
 scalar_t__ KERN_ABORTED ;
 void* KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int THREAD_ABORTSAFE ;
 int THROTTLE_LEVEL_NONE ;
 int TH_OPT_DTRACE ;
 int TRUE ;
 int VM_KERN_MEMORY_NONE ;
 int VM_PROT_EXECUTE ;
 int arm64_platform_error (int *,int ,void*) ;
 scalar_t__ arm_fast_fault (int ,int ,int,int ) ;
 int assert (int) ;
 TYPE_2__* current_thread () ;
 scalar_t__ dtrace_tally_fault (void*) ;
 int exception_triage (int ,void**,int) ;
 scalar_t__ is_alignment_fault (scalar_t__) ;
 scalar_t__ is_parity_error (scalar_t__) ;
 int is_translation_fault (scalar_t__) ;
 scalar_t__ is_vm_fault (scalar_t__) ;
 TYPE_1__* kernel_map ;
 scalar_t__ ml_at_interrupt_context () ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*) ;
 int panic_with_thread_kernel_state (char*,int *) ;
 scalar_t__ pgtrace_enabled ;
 scalar_t__ pmap_pgtrace_fault (int ,void*,int *) ;
 int set_saved_state_pc (int *,void*) ;
 void* tbi_clear (void*) ;
 int thread_exception_return () ;
 int trunc_page (void*) ;
 scalar_t__ user_tbi_enabled () ;
 scalar_t__ vm_fault (TYPE_1__*,void*,int,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void
handle_user_abort(arm_saved_state_t *state, uint32_t esr, vm_offset_t fault_addr,
      fault_status_t fault_code, vm_prot_t fault_type, vm_offset_t recover)
{
 exception_type_t exc = EXC_BAD_ACCESS;
 mach_exception_data_type_t codes[2];
 mach_msg_type_number_t numcodes = 2;
 thread_t thread = current_thread();

 (void)esr;
 (void)state;

 if (ml_at_interrupt_context())
  panic_with_thread_kernel_state("Apparently on interrupt stack when taking user abort!\n", state);

 thread->iotier_override = THROTTLE_LEVEL_NONE;

 if (is_vm_fault(fault_code)) {
  kern_return_t result = KERN_FAILURE;
  vm_map_t map = thread->map;
  vm_offset_t vm_fault_addr = fault_addr;

  assert(map != kernel_map);

  if (!(fault_type & VM_PROT_EXECUTE) && user_tbi_enabled())
    vm_fault_addr = tbi_clear(fault_addr);
  (void)recover;
  if ((result != KERN_SUCCESS) && !is_translation_fault(fault_code)) {
   result = arm_fast_fault(map->pmap, trunc_page(vm_fault_addr), fault_type, TRUE);
  }
  if (result != KERN_SUCCESS) {

   {

    result = vm_fault(map, vm_fault_addr, fault_type,
                                          FALSE, VM_KERN_MEMORY_NONE, THREAD_ABORTSAFE,
                                        ((void*)0), 0);
   }
  }
  if (result == KERN_SUCCESS || result == KERN_ABORTED) {
   thread_exception_return();

  }

  codes[0] = result;
 } else if (is_alignment_fault(fault_code)) {
  codes[0] = EXC_ARM_DA_ALIGN;
 } else if (is_parity_error(fault_code)) {







  panic("User parity error.");

 } else {
  codes[0] = KERN_FAILURE;
 }

 codes[1] = fault_addr;
 exception_triage(exc, codes, numcodes);
 assert(0);
}
