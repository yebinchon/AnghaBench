
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct _reent {int dummy; } ;
typedef int OSTime ;


 int EFAULT ;
 int OSGetTime () ;
 int errno ;
 int ticks_to_sec (int ) ;
 scalar_t__ ticks_to_us (int ) ;

int _gettimeofday_r(struct _reent *ptr,
   struct timeval* ptimeval,
   void* ptimezone)
{
   OSTime cosTime;
   uint64_t cosSecs;
   uint32_t cosUSecs;
   time_t unixSecs;


   if (ptimeval == ((void*)0))
   {
      errno = EFAULT;
      return -1;
   }


   cosTime = OSGetTime();
   cosSecs = ticks_to_sec(cosTime);


   cosUSecs = ticks_to_us(cosTime) - (cosSecs * 1000000);




   unixSecs = cosSecs + 946684800;

   ptimeval->tv_sec = unixSecs;
   ptimeval->tv_usec = cosUSecs;
   return 0;
}
