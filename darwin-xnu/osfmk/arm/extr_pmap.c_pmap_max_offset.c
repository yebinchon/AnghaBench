
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef scalar_t__ boolean_t ;


 int pmap_max_32bit_offset (unsigned int) ;
 int pmap_max_64bit_offset (unsigned int) ;

vm_map_offset_t pmap_max_offset(
 boolean_t is64,
 unsigned int option)
{
 return (is64) ? pmap_max_64bit_offset(option) : pmap_max_32bit_offset(option);
}
