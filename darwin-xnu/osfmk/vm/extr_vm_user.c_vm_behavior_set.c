
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef int vm_behavior_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int mach_vm_behavior_set (int ,int ,int ,int ) ;

kern_return_t
vm_behavior_set(
 vm_map_t map,
 vm_offset_t start,
 vm_size_t size,
 vm_behavior_t new_behavior)
{
 if (start + size < start)
  return KERN_INVALID_ARGUMENT;

 return mach_vm_behavior_set(map,
        (mach_vm_offset_t) start,
        (mach_vm_size_t) size,
        new_behavior);
}
