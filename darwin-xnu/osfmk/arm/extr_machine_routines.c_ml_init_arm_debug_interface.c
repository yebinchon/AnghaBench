
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int cpu_debug_interface_map; } ;
typedef TYPE_1__ cpu_data_t ;


 int do_debugid () ;

void
ml_init_arm_debug_interface(
       void * in_cpu_datap,
       vm_offset_t virt_address)
{
 ((cpu_data_t *)in_cpu_datap)->cpu_debug_interface_map = virt_address;
 do_debugid();
}
