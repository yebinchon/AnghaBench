
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int ppnum_t ;
struct TYPE_4__ {int vmp_fictitious; } ;


 int FALSE ;
 int TRUE ;
 int c_vm_page_grab_fictitious ;
 int c_vm_page_grab_fictitious_failed ;
 int vm_page_init (TYPE_1__*,int ,int ) ;
 int vm_page_zone ;
 scalar_t__ zget (int ) ;

vm_page_t
vm_page_grab_fictitious_common(
 ppnum_t phys_addr)
{
 vm_page_t m;

 if ((m = (vm_page_t)zget(vm_page_zone))) {

  vm_page_init(m, phys_addr, FALSE);
  m->vmp_fictitious = TRUE;

  c_vm_page_grab_fictitious++;
 } else
  c_vm_page_grab_fictitious_failed++;

 return m;
}
