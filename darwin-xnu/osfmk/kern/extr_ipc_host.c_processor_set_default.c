
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * processor_set_t ;
typedef int kern_return_t ;
typedef scalar_t__ host_t ;


 scalar_t__ HOST_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int pset0 ;

kern_return_t
processor_set_default(
 host_t host,
 processor_set_t *pset)
{
 if (host == HOST_NULL)
  return(KERN_INVALID_ARGUMENT);

 *pset = &pset0;

 return (KERN_SUCCESS);
}
