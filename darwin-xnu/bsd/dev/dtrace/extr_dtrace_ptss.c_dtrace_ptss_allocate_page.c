
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int * vm_map_t ;
typedef int task_t ;
struct proc {int task; } ;
struct dtrace_ptss_page {TYPE_1__* entries; } ;
typedef scalar_t__ mach_vm_size_t ;
typedef void* mach_vm_offset_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_2__ {struct TYPE_2__* next; void* write_addr; void* addr; } ;


 int DTRACE_PTSS_ENTRIES_PER_PAGE ;
 int DTRACE_PTSS_SCRATCH_SPACE_PER_THREAD ;
 int FALSE ;
 int IPC_PORT_NULL ;
 scalar_t__ KERN_SUCCESS ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PAGE_MAX_SIZE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_INHERIT_DEFAULT ;
 int VM_KERN_MEMORY_NONE ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int _FREE (struct dtrace_ptss_page*,int ) ;
 struct dtrace_ptss_page* _MALLOC (int,int ,int) ;
 int * get_task_map_reference (int ) ;
 scalar_t__ mach_vm_map_kernel (int *,void**,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int,int,int ) ;
 scalar_t__ mach_vm_protect (int *,void*,scalar_t__,int ,int) ;
 scalar_t__ mach_vm_remap_kernel (int *,void**,scalar_t__,int ,int ,int ,int *,void*,int ,int*,int*,int ) ;
 int vm_map_deallocate (int *) ;

struct dtrace_ptss_page*
dtrace_ptss_allocate_page(struct proc* p)
{

 struct dtrace_ptss_page* ptss_page = _MALLOC(sizeof(struct dtrace_ptss_page), M_TEMP, M_ZERO | M_WAITOK);
 if (ptss_page == ((void*)0))
  return ((void*)0);


 task_t task = p->task;
 vm_map_t map = get_task_map_reference(task);
 if (map == ((void*)0))
   goto err;

 mach_vm_size_t size = PAGE_MAX_SIZE;
 mach_vm_offset_t addr = 0;
 mach_vm_offset_t write_addr = 0;




 vm_prot_t cur_protection = VM_PROT_READ|VM_PROT_EXECUTE;
 vm_prot_t max_protection = VM_PROT_READ|VM_PROT_EXECUTE|VM_PROT_WRITE;

 kern_return_t kr = mach_vm_map_kernel(map, &addr, size, 0, VM_FLAGS_ANYWHERE, VM_MAP_KERNEL_FLAGS_NONE, VM_KERN_MEMORY_NONE, IPC_PORT_NULL, 0, FALSE, cur_protection, max_protection, VM_INHERIT_DEFAULT);
 if (kr != KERN_SUCCESS) {
  goto err;
 }




  kr = mach_vm_remap_kernel(map, &write_addr, size, 0, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_NONE, map, addr, FALSE, &cur_protection, &max_protection, VM_INHERIT_DEFAULT);
 if (kr != KERN_SUCCESS || !(max_protection & VM_PROT_WRITE))
  goto err;

 kr = mach_vm_protect (map, (mach_vm_offset_t)write_addr, (mach_vm_size_t)size, 0, VM_PROT_READ | VM_PROT_WRITE);
 if (kr != KERN_SUCCESS)
  goto err;


 int i;
 for (i=0; i<DTRACE_PTSS_ENTRIES_PER_PAGE; i++) {
  ptss_page->entries[i].addr = addr + (i * DTRACE_PTSS_SCRATCH_SPACE_PER_THREAD);
  ptss_page->entries[i].write_addr = write_addr + (i * DTRACE_PTSS_SCRATCH_SPACE_PER_THREAD);
  ptss_page->entries[i].next = &ptss_page->entries[i+1];
 }


 ptss_page->entries[DTRACE_PTSS_ENTRIES_PER_PAGE-1].next = ((void*)0);

 vm_map_deallocate(map);

 return ptss_page;

err:
 _FREE(ptss_page, M_TEMP);

 if (map)
   vm_map_deallocate(map);

 return ((void*)0);
}
