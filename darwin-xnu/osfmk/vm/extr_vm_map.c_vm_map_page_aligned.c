
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef scalar_t__ offset ;
typedef int boolean_t ;



boolean_t
vm_map_page_aligned(
 vm_map_offset_t offset,
 vm_map_offset_t mask)
{
 return ((offset) & mask) == 0;
}
