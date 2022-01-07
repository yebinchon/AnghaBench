
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_flavor_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;

 int PROCESSOR_BASIC_INFO_COUNT ;

 int PROCESSOR_CPU_LOAD_INFO_COUNT ;
 int cpu_info_count (int,int *) ;

kern_return_t
processor_info_count(
 processor_flavor_t flavor,
 mach_msg_type_number_t *count)
{
 switch (flavor) {

 case 129:
  *count = PROCESSOR_BASIC_INFO_COUNT;
  break;

 case 128:
  *count = PROCESSOR_CPU_LOAD_INFO_COUNT;
  break;

 default:
  return (cpu_info_count(flavor, count));
 }

 return (KERN_SUCCESS);
}
