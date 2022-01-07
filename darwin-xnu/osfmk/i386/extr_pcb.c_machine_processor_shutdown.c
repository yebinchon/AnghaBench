
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* processor_t ;
struct TYPE_6__ {int idle_thread; } ;


 int Shutdown_context (int ,void (*) (TYPE_1__*),TYPE_1__*) ;
 int cpu_number () ;
 int fpu_switch_context (int ,int *) ;
 int pmap_switch_context (int ,int ,int ) ;
 int vmx_suspend () ;

thread_t
machine_processor_shutdown(
 thread_t thread,
 void (*doshutdown)(processor_t),
 processor_t processor)
{



 fpu_switch_context(thread, ((void*)0));
 pmap_switch_context(thread, processor->idle_thread, cpu_number());
 return(Shutdown_context(thread, doshutdown, processor));
}
