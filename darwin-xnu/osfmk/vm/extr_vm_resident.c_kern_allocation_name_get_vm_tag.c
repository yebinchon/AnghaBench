
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int kern_allocation_name_t ;


 int vm_tag_alloc (int ) ;

vm_tag_t
kern_allocation_name_get_vm_tag(kern_allocation_name_t allocation)
{
    return (vm_tag_alloc(allocation));
}
