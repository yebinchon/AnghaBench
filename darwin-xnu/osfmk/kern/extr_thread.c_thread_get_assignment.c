
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * thread_t ;
typedef int * processor_set_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int pset0 ;

kern_return_t
thread_get_assignment(
 thread_t thread,
 processor_set_t *pset)
{
 if (thread == ((void*)0))
  return (KERN_INVALID_ARGUMENT);

 *pset = &pset0;

 return (KERN_SUCCESS);
}
