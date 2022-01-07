
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int vm_page_fictitious_addr ;
 int vm_page_grab_fictitious_common (int ) ;

vm_page_t
vm_page_grab_fictitious(void)
{
 return vm_page_grab_fictitious_common(vm_page_fictitious_addr);
}
