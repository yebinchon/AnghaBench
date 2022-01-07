
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;


 int OSAddAtomic (int,int *) ;
 int vm_guard_count ;
 scalar_t__ vm_page_grab_fictitious_common (int ) ;
 int vm_page_guard_addr ;

vm_page_t
vm_page_grab_guard(void)
{
 vm_page_t page;
 page = vm_page_grab_fictitious_common(vm_page_guard_addr);
    if (page) OSAddAtomic(1, &vm_guard_count);
 return page;
}
