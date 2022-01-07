
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_4__ {scalar_t__ cpu_int_stack_top; } ;
struct TYPE_3__ {scalar_t__ kernel_stack; } ;


 scalar_t__ INTSTACK_SIZE ;
 TYPE_2__* current_cpu_datap () ;
 TYPE_1__* current_thread () ;
 uintptr_t local ;
 scalar_t__ ml_at_interrupt_context () ;

vm_offset_t ml_stack_remaining(void)
{
 uintptr_t local = (uintptr_t) &local;

 if (ml_at_interrupt_context() != 0) {
     return (local - (current_cpu_datap()->cpu_int_stack_top - INTSTACK_SIZE));
 } else {
     return (local - current_thread()->kernel_stack);
 }
}
