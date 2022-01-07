
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int user_addr_t ;
typedef int update_header ;
typedef scalar_t__ uint64_t ;
struct intel_ucupdate {int total_size; } ;
typedef scalar_t__ kern_return_t ;


 int ENOMEM ;
 scalar_t__ KERN_SUCCESS ;
 int VM_KERN_MEMORY_OSFMK ;
 int copyin (int ,void*,int) ;
 struct intel_ucupdate* global_update ;
 int kernel_map ;
 scalar_t__ kmem_alloc_kobject (int ,int *,int,int ) ;
 int kmem_free (int ,int ,int) ;

__attribute__((used)) static int
copyin_update(uint64_t inaddr)
{
 struct intel_ucupdate update_header;
 struct intel_ucupdate *update;
 vm_size_t size;
 kern_return_t ret;
 int error;


 error = copyin((user_addr_t)inaddr, (void *)&update_header, sizeof(update_header));
 if (error)
  return error;


 size = update_header.total_size;


 if (size >= 1024 * 1024)
  return ENOMEM;


 if (size == 0)
  size = 2048;






 ret = kmem_alloc_kobject(kernel_map, (vm_offset_t *)&update, size, VM_KERN_MEMORY_OSFMK);
 if (ret != KERN_SUCCESS)
  return ENOMEM;


 error = copyin((user_addr_t)inaddr, (void*)update, size);
 if (error) {
  kmem_free(kernel_map, (vm_offset_t)update, size);
  return error;
 }

 global_update = update;
 return 0;
}
