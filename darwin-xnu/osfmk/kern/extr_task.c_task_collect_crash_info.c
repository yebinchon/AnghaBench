
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct label {int dummy; } ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int mach_vm_address_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int * kcdata_descriptor_t ;
struct TYPE_6__ {int * corpse_info; struct label* crash_label; int * bsd_info; } ;


 int CORPSEINFO_ALLOCATION_SIZE ;
 int CORPSE_CRASHINFO_HAS_REF ;
 int KCFLAG_USE_MEMCOPY ;
 int KERN_FAILURE ;
 int KERN_NOT_SUPPORTED ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int bzero (void*,int ) ;
 int corpses_enabled () ;
 scalar_t__ kalloc (int ) ;
 void* kcdata_memory_get_begin_addr (int *) ;
 int kfree (void*,int ) ;
 struct label* mac_exc_create_label () ;
 int mac_exc_free_label (struct label*) ;
 int mac_exc_update_task_crash_label (TYPE_1__*,struct label*) ;
 int * task_crashinfo_alloc_init (int ,int ,int ,int ) ;
 int task_crashinfo_destroy (int *) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

kern_return_t
task_collect_crash_info(
 task_t task,



 int is_corpse_fork)
{
 kern_return_t kr = KERN_SUCCESS;

 kcdata_descriptor_t crash_data = ((void*)0);
 kcdata_descriptor_t crash_data_release = ((void*)0);
 mach_msg_type_number_t size = CORPSEINFO_ALLOCATION_SIZE;
 mach_vm_offset_t crash_data_ptr = 0;
 void *crash_data_kernel = ((void*)0);
 void *crash_data_kernel_release = ((void*)0);




 if (!corpses_enabled()) {
  return KERN_NOT_SUPPORTED;
 }





 task_lock(task);

 assert(is_corpse_fork || task->bsd_info != ((void*)0));
 if (task->corpse_info == ((void*)0) && (is_corpse_fork || task->bsd_info != ((void*)0))) {






  task_unlock(task);

  crash_data_kernel = (void *) kalloc(CORPSEINFO_ALLOCATION_SIZE);
  if (crash_data_kernel == ((void*)0)) {
   kr = KERN_RESOURCE_SHORTAGE;
   goto out_no_lock;
  }
  bzero(crash_data_kernel, CORPSEINFO_ALLOCATION_SIZE);
  crash_data_ptr = (mach_vm_offset_t) crash_data_kernel;


  crash_data = task_crashinfo_alloc_init((mach_vm_address_t)crash_data_ptr, size,
    is_corpse_fork ? 0 : CORPSE_CRASHINFO_HAS_REF,
    KCFLAG_USE_MEMCOPY);
  if (crash_data) {
   task_lock(task);
   crash_data_release = task->corpse_info;
   crash_data_kernel_release = kcdata_memory_get_begin_addr(crash_data_release);
   task->corpse_info = crash_data;

   task_unlock(task);
   kr = KERN_SUCCESS;
  } else {
   kfree(crash_data_kernel, CORPSEINFO_ALLOCATION_SIZE);
   kr = KERN_FAILURE;
  }

  if (crash_data_release != ((void*)0)) {
   task_crashinfo_destroy(crash_data_release);
  }
  if (crash_data_kernel_release != ((void*)0)) {
   kfree(crash_data_kernel_release, CORPSEINFO_ALLOCATION_SIZE);
  }
 } else {
  task_unlock(task);
 }

out_no_lock:





 return kr;
}
