
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {scalar_t__ reserved_stack; scalar_t__ kernel_stack; } ;


 int stack_free_stack (scalar_t__) ;

void
stack_free_reserved(
 thread_t thread)
{
 if (thread->reserved_stack != thread->kernel_stack) {
  stack_free_stack(thread->reserved_stack);
 }
}
