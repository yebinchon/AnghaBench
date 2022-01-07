
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_7__ {int vmp_offset; } ;


 int VM_PAGE_CHECK (TYPE_1__*) ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 int VM_PAGE_OBJECT (TYPE_1__*) ;
 int XPR (int ,char*,int ,int ,TYPE_1__*,int ,int ) ;
 int XPR_VM_PAGE ;
 int pmap_zero_page (int ) ;

void
vm_page_zero_fill(
 vm_page_t m)
{
        XPR(XPR_VM_PAGE,
     "vm_page_zero_fill, object 0x%X offset 0x%X page 0x%X\n",
     VM_PAGE_OBJECT(m), m->vmp_offset, m, 0,0);
 pmap_zero_page(VM_PAGE_GET_PHYS_PAGE(m));
}
