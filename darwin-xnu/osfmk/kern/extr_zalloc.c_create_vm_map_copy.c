
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_size_t ;
typedef int vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE ;
 int TRUE ;
 int assert (int) ;
 int bzero (char*,scalar_t__) ;
 int ipc_kernel_map ;
 int kmem_free (int ,scalar_t__,scalar_t__) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ vm_map_copyin (int ,int ,int ,int ,int *) ;

vm_map_copy_t
create_vm_map_copy(
 vm_offset_t start_addr,
 vm_size_t total_size,
 vm_size_t used_size)
{
 kern_return_t kr;
 vm_offset_t end_addr;
 vm_size_t free_size;
 vm_map_copy_t copy;

 if (used_size != total_size) {
  end_addr = start_addr + used_size;
  free_size = total_size - (round_page(end_addr) - start_addr);

  if (free_size >= PAGE_SIZE) {
   kmem_free(ipc_kernel_map,
     round_page(end_addr), free_size);
  }
  bzero((char *) end_addr, round_page(end_addr) - end_addr);
 }

 kr = vm_map_copyin(ipc_kernel_map, (vm_map_address_t)start_addr,
      (vm_map_size_t)used_size, TRUE, &copy);
 assert(kr == KERN_SUCCESS);

 return copy;
}
