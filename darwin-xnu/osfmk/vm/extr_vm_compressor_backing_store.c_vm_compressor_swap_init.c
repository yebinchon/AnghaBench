
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int thread_continue_t ;
struct TYPE_5__ {int thread_id; } ;


 int BASEPRI_VM ;
 scalar_t__ KERN_SUCCESS ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_INTERNAL ;
 int TASK_POLICY_IO ;
 int TASK_POLICY_PASSIVE_IO ;
 int THROTTLE_LEVEL_COMPRESSOR_TIER2 ;
 int VM_MAX_SWAP_FILE_NUM ;
 int c_overage_swapped_limit ;
 int kernel_task ;
 scalar_t__ kernel_thread_start_priority (int ,int *,int ,TYPE_1__**) ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init_ext (int *,int *,int *,int *) ;
 int panic (char*) ;
 int printf (char*) ;
 int proc_set_thread_policy_with_tid (int ,int ,int ,int ,int ) ;
 int queue_init (int *) ;
 int swf_global_queue ;
 int thread_deallocate (TYPE_1__*) ;
 int thread_set_thread_name (TYPE_1__*,char*) ;
 int vm_num_swap_files_config ;
 int vm_swap_data_lock ;
 int vm_swap_data_lock_attr ;
 int vm_swap_data_lock_ext ;
 int vm_swap_data_lock_grp ;
 int vm_swap_data_lock_grp_attr ;
 scalar_t__ vm_swapfile_create_thread ;
 scalar_t__ vm_swapfile_gc_thread ;
 scalar_t__ vm_swapout_thread ;
 int vm_swapout_thread_id ;

void
vm_compressor_swap_init()
{
 thread_t thread = ((void*)0);

 lck_grp_attr_setdefault(&vm_swap_data_lock_grp_attr);
 lck_grp_init(&vm_swap_data_lock_grp,
       "vm_swap_data",
       &vm_swap_data_lock_grp_attr);
 lck_attr_setdefault(&vm_swap_data_lock_attr);
 lck_mtx_init_ext(&vm_swap_data_lock,
    &vm_swap_data_lock_ext,
    &vm_swap_data_lock_grp,
    &vm_swap_data_lock_attr);

 queue_init(&swf_global_queue);


 if (kernel_thread_start_priority((thread_continue_t)vm_swapout_thread, ((void*)0),
      BASEPRI_VM, &thread) != KERN_SUCCESS) {
  panic("vm_swapout_thread: create failed");
 }
 thread_set_thread_name(thread, "VM_swapout");
 vm_swapout_thread_id = thread->thread_id;

 thread_deallocate(thread);

 if (kernel_thread_start_priority((thread_continue_t)vm_swapfile_create_thread, ((void*)0),
     BASEPRI_VM, &thread) != KERN_SUCCESS) {
  panic("vm_swapfile_create_thread: create failed");
 }

 thread_set_thread_name(thread, "VM_swapfile_create");
 thread_deallocate(thread);

 if (kernel_thread_start_priority((thread_continue_t)vm_swapfile_gc_thread, ((void*)0),
     BASEPRI_VM, &thread) != KERN_SUCCESS) {
  panic("vm_swapfile_gc_thread: create failed");
 }
 thread_set_thread_name(thread, "VM_swapfile_gc");
 thread_deallocate(thread);

 proc_set_thread_policy_with_tid(kernel_task, thread->thread_id,
                                 TASK_POLICY_INTERNAL, TASK_POLICY_IO, THROTTLE_LEVEL_COMPRESSOR_TIER2);
 proc_set_thread_policy_with_tid(kernel_task, thread->thread_id,
                                 TASK_POLICY_INTERNAL, TASK_POLICY_PASSIVE_IO, TASK_POLICY_ENABLE);
 vm_num_swap_files_config = VM_MAX_SWAP_FILE_NUM;

 printf("VM Swap Subsystem is ON\n");
}
