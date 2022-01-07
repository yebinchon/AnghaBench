
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ kernel_stack; } ;


 int assert (int) ;
 int machine_stack_attach (TYPE_1__*,int ) ;
 int stack_alloc_internal () ;

void
stack_alloc(
 thread_t thread)
{

 assert(thread->kernel_stack == 0);
 machine_stack_attach(thread, stack_alloc_internal());
}
