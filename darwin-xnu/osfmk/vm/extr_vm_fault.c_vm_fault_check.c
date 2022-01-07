
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wait_interrupt_t ;
typedef scalar_t__ vm_page_t ;
typedef TYPE_1__* vm_object_t ;
typedef int vm_fault_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ shadow_severed; } ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 scalar_t__ TRUE ;
 int VMF_CHECK_ZFDELAY ;
 int VM_DEBUG_EVENT (int ,int ,int ,int,int ,int ,int ) ;
 int VM_FAULT_INTERRUPTED ;
 int VM_FAULT_MEMORY_ERROR ;
 int VM_FAULT_MEMORY_SHORTAGE ;
 int VM_FAULT_SUCCESS ;
 scalar_t__ VM_OBJECT_PURGEABLE_FAULT_ERROR (TYPE_1__*) ;
 int VM_PAGE_FREE (scalar_t__) ;
 scalar_t__ VM_PAGE_NULL ;
 scalar_t__ current_thread_aborted () ;
 int delay (int) ;
 int thread_interrupt_level (int ) ;
 int vm_fault_cleanup (TYPE_1__*,scalar_t__) ;
 int vm_page_throttled (int ) ;
 int vmf_check_zfdelay ;

__attribute__((used)) static vm_fault_return_t
vm_fault_check(vm_object_t object, vm_page_t m, vm_page_t first_m, wait_interrupt_t interruptible_state, boolean_t page_throttle)
{
 int throttle_delay;

        if (object->shadow_severed ||
     VM_OBJECT_PURGEABLE_FAULT_ERROR(object)) {







         if (m != VM_PAGE_NULL)
          VM_PAGE_FREE(m);
  vm_fault_cleanup(object, first_m);

  thread_interrupt_level(interruptible_state);

  return (VM_FAULT_MEMORY_ERROR);
 }
 if (page_throttle == TRUE) {
  if ((throttle_delay = vm_page_throttled(FALSE))) {




   if (m != VM_PAGE_NULL)
    VM_PAGE_FREE(m);
   vm_fault_cleanup(object, first_m);

   VM_DEBUG_EVENT(vmf_check_zfdelay, VMF_CHECK_ZFDELAY, DBG_FUNC_NONE, throttle_delay, 0, 0, 0);

   delay(throttle_delay);

   if (current_thread_aborted()) {
    thread_interrupt_level(interruptible_state);
    return VM_FAULT_INTERRUPTED;
   }
   thread_interrupt_level(interruptible_state);

   return (VM_FAULT_MEMORY_SHORTAGE);
  }
 }
 return (VM_FAULT_SUCCESS);
}
