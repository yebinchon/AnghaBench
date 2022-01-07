
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ FALSE ;
 int TRUE ;
 scalar_t__ vm_num_pinned_swap_files ;
 scalar_t__ vm_num_swap_files ;
 scalar_t__ vm_swappin_enabled ;

boolean_t
vm_swap_files_pinned(void)
{
        boolean_t result;

 if (vm_swappin_enabled == FALSE)
  return (TRUE);

        result = (vm_num_pinned_swap_files == vm_num_swap_files);

        return (result);
}
