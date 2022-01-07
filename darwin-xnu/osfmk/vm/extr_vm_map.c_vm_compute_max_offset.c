
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef scalar_t__ boolean_t ;


 int ARM_PMAP_MAX_OFFSET_DEVICE ;
 scalar_t__ MACH_VM_MAX_ADDRESS ;
 scalar_t__ VM_MAX_ADDRESS ;
 int pmap_max_offset (scalar_t__,int ) ;

vm_map_offset_t
vm_compute_max_offset(boolean_t is64)
{



 return (is64 ? (vm_map_offset_t)MACH_VM_MAX_ADDRESS : (vm_map_offset_t)VM_MAX_ADDRESS);

}
