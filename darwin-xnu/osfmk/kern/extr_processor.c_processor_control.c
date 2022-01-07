
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef int processor_info_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int cpu_id; } ;


 int KERN_INVALID_ARGUMENT ;
 TYPE_1__* PROCESSOR_NULL ;
 int cpu_control (int ,int ,int ) ;

kern_return_t
processor_control(
 processor_t processor,
 processor_info_t info,
 mach_msg_type_number_t count)
{
 if (processor == PROCESSOR_NULL)
  return(KERN_INVALID_ARGUMENT);

 return(cpu_control(processor->cpu_id, info, count));
}
