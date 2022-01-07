
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_flavor_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;

 unsigned int PROCESSOR_CPU_STAT_COUNT ;

kern_return_t
cpu_info_count(processor_flavor_t flavor,
        unsigned int *count)
{

 switch (flavor) {
 case 128:
  *count = PROCESSOR_CPU_STAT_COUNT;
  return (KERN_SUCCESS);

 default:
  *count = 0;
  return (KERN_FAILURE);
 }
}
