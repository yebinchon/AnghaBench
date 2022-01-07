
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
struct TYPE_4__ {int vmkf_permanent; } ;
typedef TYPE_1__ vm_map_kernel_flags_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_KERN_MEMORY_ZONE ;
 TYPE_1__ VM_MAP_KERNEL_FLAGS_NONE ;
 int gzalloc_map ;
 scalar_t__ gzalloc_map_max ;
 scalar_t__ gzalloc_map_min ;
 scalar_t__ gzalloc_mode ;
 int gzalloc_zonemap_scale ;
 int kernel_map ;
 scalar_t__ kmem_suballoc (int ,scalar_t__*,int,int ,int ,TYPE_1__,int ,int *) ;
 int panic (char*,int,int) ;

void gzalloc_init(vm_size_t max_zonemap_size) {
 kern_return_t retval;

 if (gzalloc_mode) {
  vm_map_kernel_flags_t vmk_flags;

  vmk_flags = VM_MAP_KERNEL_FLAGS_NONE;
  vmk_flags.vmkf_permanent = TRUE;
  retval = kmem_suballoc(kernel_map, &gzalloc_map_min, (max_zonemap_size * gzalloc_zonemap_scale),
           FALSE, VM_FLAGS_ANYWHERE, vmk_flags, VM_KERN_MEMORY_ZONE,
           &gzalloc_map);

  if (retval != KERN_SUCCESS) {
   panic("zone_init: kmem_suballoc(gzalloc_map, 0x%lx, %u) failed", max_zonemap_size, gzalloc_zonemap_scale);
  }
  gzalloc_map_max = gzalloc_map_min + (max_zonemap_size * gzalloc_zonemap_scale);
 }
}
