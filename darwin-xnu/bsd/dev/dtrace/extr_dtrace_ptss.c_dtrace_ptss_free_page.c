
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int task_t ;
struct proc {int task; } ;
struct dtrace_ptss_page {TYPE_1__* entries; } ;
typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
struct TYPE_2__ {int write_addr; int addr; } ;


 int PAGE_SIZE ;
 int get_task_map_reference (int ) ;
 int mach_vm_deallocate (int ,int ,int ) ;
 int vm_map_deallocate (int ) ;

void
dtrace_ptss_free_page(struct proc* p, struct dtrace_ptss_page* ptss_page)
{

 task_t task = p->task;
 vm_map_t map = get_task_map_reference(task);

 mach_vm_address_t addr = ptss_page->entries[0].addr;
 mach_vm_size_t size = PAGE_SIZE;


 mach_vm_deallocate(map, addr, size);

 mach_vm_address_t write_addr = ptss_page->entries[0].write_addr;
 mach_vm_deallocate(map, write_addr, size);

 vm_map_deallocate(map);
}
