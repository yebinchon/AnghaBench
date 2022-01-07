
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SWAPPER_HAS_CAUGHTUP () ;
 int SWAPPER_NEEDS_TO_CATCHUP () ;
 int SWAPPER_NEEDS_TO_RETHROTTLE () ;
 int SWAPPER_NEEDS_TO_UNTHROTTLE () ;
 int TASK_POLICY_DISABLE ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_INTERNAL ;
 int TASK_POLICY_IO ;
 int TASK_POLICY_PASSIVE_IO ;
 int THROTTLE_LEVEL_COMPRESSOR_TIER0 ;
 int THROTTLE_LEVEL_COMPRESSOR_TIER1 ;
 int THROTTLE_LEVEL_COMPRESSOR_TIER2 ;
 int TRUE ;
 int VM_SWAPOUT_LIMIT_T0 ;
 int VM_SWAPOUT_LIMIT_T0P ;
 int VM_SWAPOUT_LIMIT_T1P ;
 int VM_SWAPOUT_LIMIT_T2P ;





 int hibernate_flushing ;
 int kernel_task ;
 int proc_set_thread_policy_with_tid (int ,int ,int ,int ,int ) ;
 int swapout_target_age ;
 int vm_swapout_limit ;
 int vm_swapout_state ;
 int vm_swapout_thread_id ;
 int vm_swapper_entered_T0 ;
 int vm_swapper_entered_T0P ;
 int vm_swapper_entered_T1P ;
 int vm_swapper_entered_T2P ;
 int vm_swapper_throttle ;

__attribute__((used)) static void
vm_swapout_thread_throttle_adjust(void)
{

 switch(vm_swapout_state) {

 case 132:

  vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER2;
  vm_swapper_entered_T2P++;

  proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
                                  TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
  proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
      TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
  vm_swapout_limit = VM_SWAPOUT_LIMIT_T2P;
  vm_swapout_state = 128;

  break;

 case 128:

  if (SWAPPER_NEEDS_TO_UNTHROTTLE()) {
   vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER0;
   vm_swapper_entered_T0P++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T0P;
   vm_swapout_state = 130;

   break;
  }
  if (swapout_target_age || hibernate_flushing == TRUE) {
   vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER1;
   vm_swapper_entered_T1P++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T1P;
   vm_swapout_state = 129;
  }
  break;

 case 129:

  if (SWAPPER_NEEDS_TO_UNTHROTTLE()) {
   vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER0;
   vm_swapper_entered_T0P++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T0P;
   vm_swapout_state = 130;

   break;
  }
  if (swapout_target_age == 0 && hibernate_flushing == FALSE) {

          vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER2;
   vm_swapper_entered_T2P++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T2P;
   vm_swapout_state = 128;
  }
         break;

 case 130:

         if (SWAPPER_NEEDS_TO_RETHROTTLE()) {
   vm_swapper_throttle = THROTTLE_LEVEL_COMPRESSOR_TIER2;
   vm_swapper_entered_T2P++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_IO, vm_swapper_throttle);
   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T2P;
   vm_swapout_state = 128;

   break;
  }
  if (SWAPPER_NEEDS_TO_CATCHUP()) {
          vm_swapper_entered_T0++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_DISABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T0;
   vm_swapout_state = 131;
  }
  break;

 case 131:

  if (SWAPPER_HAS_CAUGHTUP()) {
          vm_swapper_entered_T0P++;

   proc_set_thread_policy_with_tid(kernel_task, vm_swapout_thread_id,
       TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
   vm_swapout_limit = VM_SWAPOUT_LIMIT_T0P;
   vm_swapout_state = 130;
  }
  break;
 }
}
