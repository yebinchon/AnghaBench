
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int virtual_space_end ;
 int virtual_space_start ;

void
pmap_virtual_space(
   vm_offset_t *startp,
   vm_offset_t *endp
)
{
 *startp = virtual_space_start;
 *endp = virtual_space_end;
}
