
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_slide_info_entry_v2_t ;
typedef int uint32_t ;
typedef int mach_vm_size_t ;
typedef int kern_return_t ;
struct TYPE_3__ {scalar_t__ page_size; int page_starts_count; int page_extras_count; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE_FOR_SR_SLIDE ;

__attribute__((used)) static kern_return_t
vm_shared_region_slide_sanity_check_v2(vm_shared_region_slide_info_entry_v2_t s_info, mach_vm_size_t slide_info_size)
{
 if (s_info->page_size != PAGE_SIZE_FOR_SR_SLIDE) {
  return KERN_FAILURE;
 }



 uint32_t page_starts_count = s_info->page_starts_count;
 uint32_t page_extras_count = s_info->page_extras_count;
 mach_vm_size_t num_trailing_entries = page_starts_count + page_extras_count;
 if (num_trailing_entries < page_starts_count) {
  return KERN_FAILURE;
 }


 mach_vm_size_t trailing_size = num_trailing_entries << 1;
 if (trailing_size >> 1 != num_trailing_entries) {
  return KERN_FAILURE;
 }

 mach_vm_size_t required_size = sizeof(*s_info) + trailing_size;
 if (required_size < sizeof(*s_info)) {
  return KERN_FAILURE;
 }

 if (required_size > slide_info_size) {
  return KERN_FAILURE;
 }

 return KERN_SUCCESS;
}
