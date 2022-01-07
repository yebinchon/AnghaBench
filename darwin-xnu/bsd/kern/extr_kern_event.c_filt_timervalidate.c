
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kevent_internal_s {int fflags; scalar_t__ data; scalar_t__* ext; } ;
struct filt_timer_params {int leeway; int deadline; int interval; } ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ FALSE ;
 int NOTE_ABSOLUTE ;
 int NOTE_LEEWAY ;

 int NOTE_MACH_CONTINUOUS_TIME ;



 int NSEC_PER_SEC ;
 int NSEC_PER_USEC ;
 scalar_t__ TRUE ;
 int clock_absolutetime_interval_to_deadline (int,int*) ;
 int clock_continuoustime_interval_to_deadline (int,int*) ;
 int clock_get_calendar_nanotime (scalar_t__*,int*) ;
 int nanoseconds_to_absolutetime (int,int*) ;
 scalar_t__ os_mul_overflow (int,int,int*) ;

__attribute__((used)) static int
filt_timervalidate(const struct kevent_internal_s *kev,
  struct filt_timer_params *params)
{
 uint64_t multiplier;

 boolean_t use_abstime = FALSE;

 switch (kev->fflags & (129|128|130|131)) {
 case 129:
  multiplier = NSEC_PER_SEC;
  break;
 case 128:
  multiplier = NSEC_PER_USEC;
  break;
 case 130:
  multiplier = 1;
  break;
 case 131:
  multiplier = 0;
  use_abstime = TRUE;
  break;
 case 0:
  multiplier = NSEC_PER_SEC / 1000;
  break;
 default:
  return (EINVAL);
 }


 if (kev->fflags & NOTE_LEEWAY) {
  uint64_t leeway_abs;

  if (use_abstime) {
   leeway_abs = (uint64_t)kev->ext[1];
  } else {
   uint64_t leeway_ns;
   if (os_mul_overflow((uint64_t)kev->ext[1], multiplier, &leeway_ns))
    return (ERANGE);

   nanoseconds_to_absolutetime(leeway_ns, &leeway_abs);
  }

  params->leeway = leeway_abs;
 } else {
  params->leeway = 0;
 }

 if (kev->fflags & NOTE_ABSOLUTE) {
  uint64_t deadline_abs;

  if (use_abstime) {
   deadline_abs = (uint64_t)kev->data;
  } else {
   uint64_t calendar_deadline_ns;

   if (os_mul_overflow((uint64_t)kev->data, multiplier, &calendar_deadline_ns))
    return (ERANGE);



   clock_sec_t seconds;
   clock_nsec_t nanoseconds;
   clock_get_calendar_nanotime(&seconds, &nanoseconds);

   uint64_t calendar_now_ns = (uint64_t)seconds * NSEC_PER_SEC + nanoseconds;


   if (calendar_now_ns < calendar_deadline_ns) {
    uint64_t interval_ns = calendar_deadline_ns - calendar_now_ns;
    uint64_t interval_abs;

    nanoseconds_to_absolutetime(interval_ns, &interval_abs);







    if (kev->fflags & NOTE_MACH_CONTINUOUS_TIME)
     clock_continuoustime_interval_to_deadline(interval_abs,
                                               &deadline_abs);
    else
     clock_absolutetime_interval_to_deadline(interval_abs,
                                             &deadline_abs);
   } else {
    deadline_abs = 0;
   }
  }

  params->deadline = deadline_abs;
  params->interval = 0;
 } else if (kev->data < 0) {
  params->deadline = 0;
  params->interval = 0;
 } else {
  uint64_t interval_abs = 0;

  if (use_abstime) {
   interval_abs = (uint64_t)kev->data;
  } else {
   uint64_t interval_ns;
   if (os_mul_overflow((uint64_t)kev->data, multiplier, &interval_ns))
    return (ERANGE);

   nanoseconds_to_absolutetime(interval_ns, &interval_abs);
  }

  uint64_t deadline = 0;

  if (kev->fflags & NOTE_MACH_CONTINUOUS_TIME)
   clock_continuoustime_interval_to_deadline(interval_abs, &deadline);
  else
   clock_absolutetime_interval_to_deadline(interval_abs, &deadline);

  params->deadline = deadline;
  params->interval = interval_abs;
 }

 return (0);
}
