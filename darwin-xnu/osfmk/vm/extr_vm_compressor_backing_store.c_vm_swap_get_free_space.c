
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ vm_swap_get_total_space () ;
 scalar_t__ vm_swap_get_used_space () ;

uint64_t
vm_swap_get_free_space(void)
{
 return (vm_swap_get_total_space() - vm_swap_get_used_space());
}
