
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int vm_page_free_count ;
 unsigned int vm_page_free_target ;

unsigned int
mach_vm_ctl_page_free_wanted(void)
{
 unsigned int page_free_target, page_free_count, page_free_wanted;

 page_free_target = vm_page_free_target;
 page_free_count = vm_page_free_count;
 if (page_free_target > page_free_count) {
  page_free_wanted = page_free_target - page_free_count;
 } else {
  page_free_wanted = 0;
 }

 return page_free_wanted;
}
