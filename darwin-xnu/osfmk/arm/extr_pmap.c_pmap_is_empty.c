
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int pmap_is_empty_internal (int ,int ,int ) ;

boolean_t
pmap_is_empty(
 pmap_t pmap,
 vm_map_offset_t va_start,
 vm_map_offset_t va_end)
{
 return pmap_is_empty_internal(pmap, va_start, va_end);
}
