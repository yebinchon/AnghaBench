
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int mach_vm_offset_t ;
struct TYPE_2__ {int vme_start; } ;


 TYPE_1__* vm_map_first_entry (int ) ;

mach_vm_offset_t
mach_get_vm_start(vm_map_t map)
{
 return( vm_map_first_entry(map)->vme_start);
}
