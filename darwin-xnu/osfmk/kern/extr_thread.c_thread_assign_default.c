
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int kern_return_t ;


 int pset0 ;
 int thread_assign (int ,int *) ;

kern_return_t
thread_assign_default(
 thread_t thread)
{
 return (thread_assign(thread, &pset0));
}
