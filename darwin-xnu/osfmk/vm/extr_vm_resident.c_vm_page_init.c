
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ ppnum_t ;
typedef int boolean_t ;
struct TYPE_5__ {int vmp_lopage; } ;


 int VM_MEM_MODIFIED ;
 int VM_MEM_REFERENCED ;
 int VM_PAGE_SET_PHYS_PAGE (TYPE_1__*,scalar_t__) ;
 int assert (scalar_t__) ;
 int panic (char*,scalar_t__) ;
 int pmap_clear_refmod (scalar_t__,int) ;
 int pmap_valid_page (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;
 TYPE_1__ vm_page_template ;

void
vm_page_init(
 vm_page_t mem,
 ppnum_t phys_page,
 boolean_t lopage)
{
 assert(phys_page);
 *mem = vm_page_template;

 VM_PAGE_SET_PHYS_PAGE(mem, phys_page);
 mem->vmp_lopage = lopage;
}
