
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int clock_res_t ;
typedef int clock_flavor_t ;
typedef scalar_t__ clock_attr_t ;






 int KERN_FAILURE ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int NSEC_PER_SEC ;

kern_return_t
rtclock_getattr(
 clock_flavor_t flavor,
 clock_attr_t attr,
 mach_msg_type_number_t *count)
{
 if (*count != 1)
  return (KERN_FAILURE);

 switch (flavor) {

 case 128:
 case 131:
 case 129:
 case 130:
  *(clock_res_t *) attr = NSEC_PER_SEC / 100;
  break;

 default:
  return (KERN_INVALID_VALUE);
 }

 return (KERN_SUCCESS);
}
