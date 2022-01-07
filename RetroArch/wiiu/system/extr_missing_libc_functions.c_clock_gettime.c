
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; int member_0; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int clockid_t ;
typedef int OSTime ;



 int EFAULT ;
 int EINVAL ;
 int _gettimeofday_r (int *,struct timeval*,int *) ;
 int errno ;

int clock_gettime(clockid_t clk_id, struct timespec* tp)
{
   struct timeval ptimeval = { 0 };
   int ret = 0;
   OSTime cosTime;

   if (tp == ((void*)0)) {
      errno = EFAULT;
      return -1;
   }

   switch (clk_id) {
      case 128:

         ret = _gettimeofday_r(((void*)0), &ptimeval, ((void*)0));
         if (ret) return -1;

         tp->tv_sec = ptimeval.tv_sec;
         tp->tv_nsec = ptimeval.tv_usec * 1000;
      break;
      default:
         errno = EINVAL;
         return -1;
   }
   return 0;
}
