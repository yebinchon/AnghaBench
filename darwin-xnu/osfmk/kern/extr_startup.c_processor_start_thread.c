
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef int thread_continue_t ;
typedef TYPE_1__* processor_t ;
struct TYPE_3__ {scalar_t__ idle_thread; } ;


 TYPE_1__* current_processor () ;
 scalar_t__ current_thread () ;
 scalar_t__ idle_thread ;
 int slave_machine_init (void*) ;
 int thread_block (int ) ;
 int thread_terminate (scalar_t__) ;

void
processor_start_thread(void *machine_param)
{
 processor_t processor = current_processor();
 thread_t self = current_thread();

 slave_machine_init(machine_param);





 if (self == processor->idle_thread)
  thread_block((thread_continue_t)idle_thread);

 thread_terminate(self);

}
