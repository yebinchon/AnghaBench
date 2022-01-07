
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_info_t ;
typedef int vm_page_info_flavor_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int vm_map_page_range_info_internal (int ,scalar_t__,scalar_t__,int ,int ,int *) ;

kern_return_t
vm_map_page_info(
 vm_map_t map,
 vm_map_offset_t offset,
 vm_page_info_flavor_t flavor,
 vm_page_info_t info,
 mach_msg_type_number_t *count)
{
 return (vm_map_page_range_info_internal(map,
           offset,
           (offset + 1),
           flavor,
           info,
           count));
}
