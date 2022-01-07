
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int tz_dsttime; int tz_minuteswest; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timeb {int millitm; int dstflag; int timezone; int time; } ;


 int gettimeofday (struct timeval*,struct timezone*) ;

int ftime(struct timeb *tb)
{
   struct timeval tv;
   struct timezone tz;

   gettimeofday(&tv, &tz);

   tb->time = tv.tv_sec;
   tb->millitm = tv.tv_usec / 1000;
   tb->timezone = tz.tz_minuteswest;
   tb->dstflag = tz.tz_dsttime;

   return 0;
}
