
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef int kern_return_t ;


 int kernel_thread_start_priority (int ,void*,int,int *) ;

kern_return_t
kernel_thread_start(
 thread_continue_t continuation,
 void *parameter,
 thread_t *new_thread)
{
 return kernel_thread_start_priority(continuation, parameter, -1, new_thread);
}
