
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef uintptr_t vm_offset_t ;
struct TYPE_4__ {uintptr_t kernel_stack; } ;
struct TYPE_3__ {uintptr_t intstack_top; } ;


 uintptr_t INTSTACK_SIZE ;
 TYPE_2__* current_thread () ;
 TYPE_1__* getCpuDatap () ;
 uintptr_t local ;

vm_offset_t
ml_stack_remaining(void)
{
 uintptr_t local = (uintptr_t) &local;
 vm_offset_t intstack_top_ptr;





 intstack_top_ptr = getCpuDatap()->intstack_top;
 if ((local < intstack_top_ptr) && (local > intstack_top_ptr - INTSTACK_SIZE)) {
  return (local - (getCpuDatap()->intstack_top - INTSTACK_SIZE));
 } else {
  return (local - current_thread()->kernel_stack);
 }
}
