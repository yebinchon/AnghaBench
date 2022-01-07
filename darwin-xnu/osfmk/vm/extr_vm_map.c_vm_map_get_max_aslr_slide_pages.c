
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int uint64_t ;


 int VM_MAP_PAGE_SHIFT (int ) ;
 scalar_t__ vm_map_is_64bit (int ) ;

uint64_t
vm_map_get_max_aslr_slide_pages(vm_map_t map)
{







 return (1 << (vm_map_is_64bit(map) ? 16 : 8));

}
