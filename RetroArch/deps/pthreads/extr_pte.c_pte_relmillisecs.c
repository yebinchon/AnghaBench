
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timeb {scalar_t__ millitm; scalar_t__ time; } ;
typedef long long const int64_t ;


 int _ftime (struct timeb*) ;

unsigned int pte_relmillisecs (const struct timespec * abstime)
{
   const long long NANOSEC_PER_MILLISEC = 1000000;
   const long long MILLISEC_PER_SEC = 1000;
   unsigned int milliseconds;
   long tmpCurrMilliseconds;
   struct timeb currSysTime;
   long long tmpAbsMilliseconds = (int64_t)abstime->tv_sec * MILLISEC_PER_SEC;
   tmpAbsMilliseconds += ((int64_t)abstime->tv_nsec + (NANOSEC_PER_MILLISEC/2)) / NANOSEC_PER_MILLISEC;



   _ftime(&currSysTime);

   tmpCurrMilliseconds = (int64_t) currSysTime.time * MILLISEC_PER_SEC;
   tmpCurrMilliseconds += (int64_t) currSysTime.millitm;

   if (tmpAbsMilliseconds > tmpCurrMilliseconds)
   {
      milliseconds = (unsigned int) (tmpAbsMilliseconds - tmpCurrMilliseconds);

      if (milliseconds == 0xFFFFFFFF)
         milliseconds--;
   }

   else
      milliseconds = 0;

   return milliseconds;
}
