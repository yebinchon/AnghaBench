
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_4__ {void* wait_for_space; void* no_zero_fill; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MSG_OOL_SIZE_SMALL_MAX ;
 void* TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_KERN_MEMORY_IPC ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 scalar_t__ cpy_kdata_hdr_sz ;
 int ipc_host_init () ;
 TYPE_1__* ipc_kernel_copy_map ;
 int ipc_kernel_copy_map_size ;
 TYPE_1__* ipc_kernel_map ;
 int ipc_kernel_map_size ;
 scalar_t__ kalloc_max_prerounded ;
 int kernel_map ;
 scalar_t__ kmem_suballoc (int ,int *,int ,void*,int ,int ,int ,TYPE_1__**) ;
 scalar_t__ msg_ool_size_small ;
 int panic (char*) ;
 int ux_handler_init () ;

void
ipc_init(void)
{
 kern_return_t retval;
 vm_offset_t min;

 retval = kmem_suballoc(kernel_map, &min, ipc_kernel_map_size,
          TRUE,
          (VM_FLAGS_ANYWHERE),
          VM_MAP_KERNEL_FLAGS_NONE,
          VM_KERN_MEMORY_IPC,
          &ipc_kernel_map);

 if (retval != KERN_SUCCESS)
  panic("ipc_init: kmem_suballoc of ipc_kernel_map failed");

 retval = kmem_suballoc(kernel_map, &min, ipc_kernel_copy_map_size,
          TRUE,
          (VM_FLAGS_ANYWHERE),
          VM_MAP_KERNEL_FLAGS_NONE,
          VM_KERN_MEMORY_IPC,
          &ipc_kernel_copy_map);

 if (retval != KERN_SUCCESS)
  panic("ipc_init: kmem_suballoc of ipc_kernel_copy_map failed");

 ipc_kernel_copy_map->no_zero_fill = TRUE;
 ipc_kernel_copy_map->wait_for_space = TRUE;







 if (kalloc_max_prerounded <= MSG_OOL_SIZE_SMALL_MAX) {
  msg_ool_size_small = kalloc_max_prerounded;
 }
 else {
  msg_ool_size_small = MSG_OOL_SIZE_SMALL_MAX;
 }

 msg_ool_size_small -= cpy_kdata_hdr_sz;

 ipc_host_init();
 ux_handler_init();

}
