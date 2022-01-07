
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_kernel_state_t ;
typedef scalar_t__ kern_allocation_name_t ;
struct TYPE_3__ {scalar_t__ allocation_name; } ;


 int current_thread () ;
 TYPE_1__* thread_get_kernel_state (int ) ;

kern_allocation_name_t thread_set_allocation_name(kern_allocation_name_t new_name)
{
 kern_allocation_name_t ret;
 thread_kernel_state_t kstate = thread_get_kernel_state(current_thread());
 ret = kstate->allocation_name;

 if (!new_name || !kstate->allocation_name) kstate->allocation_name = new_name;
 return ret;
}
