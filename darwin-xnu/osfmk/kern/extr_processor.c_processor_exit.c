
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ processor_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ PROCESSOR_NULL ;
 int processor_shutdown (scalar_t__) ;

kern_return_t
processor_exit(
 processor_t processor)
{
 if (processor == PROCESSOR_NULL)
  return(KERN_INVALID_ARGUMENT);

 return(processor_shutdown(processor));
}
