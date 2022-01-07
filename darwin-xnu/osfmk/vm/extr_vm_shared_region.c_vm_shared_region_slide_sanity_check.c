
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_shared_region_t ;
typedef TYPE_1__* vm_shared_region_slide_info_t ;
typedef TYPE_2__* vm_shared_region_slide_info_entry_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {int version; int v4; int v3; int v2; int v1; } ;
struct TYPE_4__ {scalar_t__ slide_info_size; TYPE_2__* slide_info_entry; scalar_t__ slide; scalar_t__ end; scalar_t__ start; int * slide_object; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int TRUE ;
 int VM_PROT_READ ;
 int kernel_map ;
 int kmem_free (int ,scalar_t__,int ) ;
 scalar_t__ mach_vm_protect (int ,int ,int ,int ,int ) ;
 int panic (char*,scalar_t__) ;
 int vm_object_deallocate (int *) ;
 TYPE_1__* vm_shared_region_get_slide_info (int ) ;
 scalar_t__ vm_shared_region_slide_sanity_check_v1 (int *) ;
 scalar_t__ vm_shared_region_slide_sanity_check_v2 (int *,scalar_t__) ;
 scalar_t__ vm_shared_region_slide_sanity_check_v3 (int *,scalar_t__) ;
 scalar_t__ vm_shared_region_slide_sanity_check_v4 (int *,scalar_t__) ;

kern_return_t
vm_shared_region_slide_sanity_check(vm_shared_region_t sr)
{
 vm_shared_region_slide_info_t si;
 vm_shared_region_slide_info_entry_t s_info;
 kern_return_t kr;

 si = vm_shared_region_get_slide_info(sr);
 s_info = si->slide_info_entry;

 kr = mach_vm_protect(kernel_map,
        (mach_vm_offset_t)(vm_offset_t)s_info,
        (mach_vm_size_t) si->slide_info_size,
        TRUE, VM_PROT_READ);
 if (kr != KERN_SUCCESS) {
  panic("vm_shared_region_slide_sanity_check: vm_protect() error 0x%x\n", kr);
 }

 if (s_info->version == 1) {
  kr = vm_shared_region_slide_sanity_check_v1(&s_info->v1);
 } else if (s_info->version == 2) {
  kr = vm_shared_region_slide_sanity_check_v2(&s_info->v2, si->slide_info_size);
 } else if (s_info->version == 3) {
  kr = vm_shared_region_slide_sanity_check_v3(&s_info->v3, si->slide_info_size);
    } else if (s_info->version == 4) {
        kr = vm_shared_region_slide_sanity_check_v4(&s_info->v4, si->slide_info_size);
 } else {
  goto fail;
 }
 if (kr != KERN_SUCCESS) {
  goto fail;
 }

 return KERN_SUCCESS;
fail:
 if (si->slide_info_entry != ((void*)0)) {
  kmem_free(kernel_map,
     (vm_offset_t) si->slide_info_entry,
     (vm_size_t) si->slide_info_size);

  vm_object_deallocate(si->slide_object);
         si->slide_object = ((void*)0);
  si->start = 0;
  si->end = 0;
  si->slide = 0;
  si->slide_info_entry = ((void*)0);
  si->slide_info_size = 0;
 }
 return KERN_FAILURE;
}
