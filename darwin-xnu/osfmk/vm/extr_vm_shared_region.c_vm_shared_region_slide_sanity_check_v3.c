
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_slide_info_entry_v3_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int mach_vm_size_t ;
typedef int kern_return_t ;
struct TYPE_3__ {scalar_t__ page_size; int page_starts_count; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE_FOR_SR_SLIDE ;
 int printf (char*,int ,int ) ;

__attribute__((used)) static kern_return_t
vm_shared_region_slide_sanity_check_v3(vm_shared_region_slide_info_entry_v3_t s_info, mach_vm_size_t slide_info_size)
{
 if (s_info->page_size != PAGE_SIZE_FOR_SR_SLIDE) {
  printf("vm_shared_region_slide_sanity_check_v3: s_info->page_size != PAGE_SIZE_FOR_SR_SL 0x%llx != 0x%llx\n", (uint64_t)s_info->page_size, (uint64_t)PAGE_SIZE_FOR_SR_SLIDE);
  return KERN_FAILURE;
 }

 uint32_t page_starts_count = s_info->page_starts_count;
 mach_vm_size_t num_trailing_entries = page_starts_count;
 mach_vm_size_t trailing_size = num_trailing_entries << 1;
 mach_vm_size_t required_size = sizeof(*s_info) + trailing_size;
 if (required_size < sizeof(*s_info)) {
  printf("vm_shared_region_slide_sanity_check_v3: required_size != sizeof(*s_info) 0x%llx != 0x%llx\n", (uint64_t)required_size, (uint64_t)sizeof(*s_info));
  return KERN_FAILURE;
 }

 if (required_size > slide_info_size) {
  printf("vm_shared_region_slide_sanity_check_v3: required_size != slide_info_size 0x%llx != 0x%llx\n", (uint64_t)required_size, (uint64_t)slide_info_size);
  return KERN_FAILURE;
 }

 return KERN_SUCCESS;
}
