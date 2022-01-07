
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int TRUE ;
 int vm_page_deactivate_internal (int ,int ) ;

void
vm_page_deactivate(
 vm_page_t m)
{
 vm_page_deactivate_internal(m, TRUE);
}
