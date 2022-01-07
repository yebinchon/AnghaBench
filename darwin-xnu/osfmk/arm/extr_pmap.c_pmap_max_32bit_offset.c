
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;


 unsigned int ARM_PMAP_MAX_OFFSET_DEFAULT ;
 unsigned int ARM_PMAP_MAX_OFFSET_DEVICE ;
 unsigned int ARM_PMAP_MAX_OFFSET_JUMBO ;
 unsigned int ARM_PMAP_MAX_OFFSET_MAX ;
 unsigned int ARM_PMAP_MAX_OFFSET_MIN ;
 int MACH_VM_MAX_ADDRESS ;
 int VM_MAX_ADDRESS ;
 int arm_pmap_max_offset_default ;
 int assert (int) ;
 int max_mem ;
 int panic (char*,unsigned int) ;

vm_map_offset_t pmap_max_32bit_offset(
 unsigned int option)
{
 vm_map_offset_t max_offset_ret = 0;

 if (option == ARM_PMAP_MAX_OFFSET_DEFAULT) {
  max_offset_ret = arm_pmap_max_offset_default;
 } else if (option == ARM_PMAP_MAX_OFFSET_MIN) {
  max_offset_ret = 0x66000000;
 } else if (option == ARM_PMAP_MAX_OFFSET_MAX) {
  max_offset_ret = VM_MAX_ADDRESS;
 } else if (option == ARM_PMAP_MAX_OFFSET_DEVICE) {
  if (arm_pmap_max_offset_default) {
   max_offset_ret = arm_pmap_max_offset_default;
  } else if (max_mem > 0x20000000) {
   max_offset_ret = 0x80000000;
  } else {
   max_offset_ret = 0x66000000;
  }
 } else if (option == ARM_PMAP_MAX_OFFSET_JUMBO) {
  max_offset_ret = 0x80000000;
 } else {
  panic("pmap_max_32bit_offset illegal option 0x%x\n", option);
 }

 assert(max_offset_ret <= MACH_VM_MAX_ADDRESS);
 return max_offset_ret;
}
