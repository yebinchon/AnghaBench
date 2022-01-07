
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int kernel_map ;
 int vm_map_min (int ) ;

vm_offset_t min_valid_stack_address(void)
{
 return (vm_offset_t)vm_map_min(kernel_map);
}
