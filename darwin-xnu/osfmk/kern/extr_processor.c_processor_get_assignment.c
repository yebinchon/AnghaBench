
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef int * processor_set_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int state; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 TYPE_1__* PROCESSOR_NULL ;
 int PROCESSOR_OFF_LINE ;
 int PROCESSOR_SHUTDOWN ;
 int pset0 ;

kern_return_t
processor_get_assignment(
 processor_t processor,
 processor_set_t *pset)
{
 int state;

 if (processor == PROCESSOR_NULL)
  return(KERN_INVALID_ARGUMENT);

 state = processor->state;
 if (state == PROCESSOR_SHUTDOWN || state == PROCESSOR_OFF_LINE)
  return(KERN_FAILURE);

 *pset = &pset0;

 return(KERN_SUCCESS);
}
