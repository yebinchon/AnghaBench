
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int task_region_footprint; } ;


 int TRUE ;
 TYPE_1__* current_task () ;
 scalar_t__ vm_region_footprint ;

boolean_t
task_self_region_footprint(void)
{






 return current_task()->task_region_footprint;
}
