
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ reserved_stack; } ;


 int assert (scalar_t__) ;
 scalar_t__ machine_stack_detach (TYPE_1__*) ;
 int stack_free_stack (scalar_t__) ;

void
stack_free(
 thread_t thread)
{
    vm_offset_t stack = machine_stack_detach(thread);

 assert(stack);
 if (stack != thread->reserved_stack) {
  stack_free_stack(stack);
 }
}
