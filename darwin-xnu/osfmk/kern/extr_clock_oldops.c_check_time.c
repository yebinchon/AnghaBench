
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_timespec_t ;
typedef int alarm_type_t ;


 int ADD_MACH_TIMESPEC (int *,int *) ;
 int ALRMTYPE ;
 scalar_t__ BAD_ALRMTYPE (int) ;
 scalar_t__ BAD_MACH_TIMESPEC (int *) ;
 int CMP_MACH_TIMESPEC (int *,int *) ;
 int TIME_RELATIVE ;

__attribute__((used)) static int
check_time(
 alarm_type_t alarm_type,
 mach_timespec_t *alarm_time,
 mach_timespec_t *clock_time)
{
 int result;

 if (BAD_ALRMTYPE(alarm_type))
  return (-1);
 if (BAD_MACH_TIMESPEC(alarm_time))
  return (-1);
 if ((alarm_type & ALRMTYPE) == TIME_RELATIVE)
  ADD_MACH_TIMESPEC(alarm_time, clock_time);

 result = CMP_MACH_TIMESPEC(alarm_time, clock_time);

 return ((result >= 0)? result: 0);
}
