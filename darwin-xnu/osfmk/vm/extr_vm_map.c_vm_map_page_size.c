
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;


 int VM_MAP_PAGE_SIZE (int ) ;

int
vm_map_page_size(
 vm_map_t map)
{
 return VM_MAP_PAGE_SIZE(map);
}
