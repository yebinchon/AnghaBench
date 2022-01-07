
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_shared_region_slide_info_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;
struct TYPE_9__ {TYPE_1__* slide_info_entry; } ;
struct TYPE_8__ {int version; } ;


 int KERN_FAILURE ;
 int vm_shared_region_slide_page_v1 (TYPE_2__*,int ,int ) ;
 int vm_shared_region_slide_page_v2 (TYPE_2__*,int ,int ) ;
 int vm_shared_region_slide_page_v3 (TYPE_2__*,int ,int ,int ) ;
 int vm_shared_region_slide_page_v4 (TYPE_2__*,int ,int ) ;

kern_return_t
vm_shared_region_slide_page(vm_shared_region_slide_info_t si, vm_offset_t vaddr, mach_vm_offset_t uservaddr, uint32_t pageIndex)
{
 if (si->slide_info_entry->version == 1) {
  return vm_shared_region_slide_page_v1(si, vaddr, pageIndex);
 } else if (si->slide_info_entry->version == 2) {
  return vm_shared_region_slide_page_v2(si, vaddr, pageIndex);
    } else if (si->slide_info_entry->version == 3) {
  return vm_shared_region_slide_page_v3(si, vaddr, uservaddr, pageIndex);
    } else if (si->slide_info_entry->version == 4) {
        return vm_shared_region_slide_page_v4(si, vaddr, pageIndex);
 } else {
        return KERN_FAILURE;
    }
}
