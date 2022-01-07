
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int ppnum_t ;


 int VM_PAGE_GET_PHYS_PAGE (int ) ;

ppnum_t
vm_page_get_phys_page(vm_page_t page)
{
 return (VM_PAGE_GET_PHYS_PAGE(page));
}
