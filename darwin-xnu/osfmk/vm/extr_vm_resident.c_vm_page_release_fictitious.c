
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {scalar_t__ vmp_q_state; int vmp_fictitious; } ;


 int OSAddAtomic (int,int *) ;
 scalar_t__ VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 scalar_t__ VM_PAGE_IS_WIRED ;
 scalar_t__ VM_PAGE_NOT_ON_Q ;
 int assert (int) ;
 int c_vm_page_release_fictitious ;
 int vm_guard_count ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;
 int vm_page_zone ;
 int zfree (int ,TYPE_1__*) ;

void
vm_page_release_fictitious(
 vm_page_t m)
{
 assert((m->vmp_q_state == VM_PAGE_NOT_ON_Q) || (m->vmp_q_state == VM_PAGE_IS_WIRED));
 assert(m->vmp_fictitious);
 assert(VM_PAGE_GET_PHYS_PAGE(m) == vm_page_fictitious_addr ||
        VM_PAGE_GET_PHYS_PAGE(m) == vm_page_guard_addr);


if (VM_PAGE_GET_PHYS_PAGE(m) == vm_page_guard_addr) OSAddAtomic(-1, &vm_guard_count);

 c_vm_page_release_fictitious++;

 zfree(vm_page_zone, m);
}
