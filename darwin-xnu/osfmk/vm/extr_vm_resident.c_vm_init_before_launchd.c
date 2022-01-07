
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vm_page_wire_count ;
 int vm_page_wire_count_on_boot ;

void
vm_init_before_launchd()
{
 vm_page_wire_count_on_boot = vm_page_wire_count;
}
