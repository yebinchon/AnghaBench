
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
struct timespec {double tv_nsec; scalar_t__ tv_sec; } ;
typedef int DWORD ;


 int DosSleep (double) ;
 int PLATFORM_Sleep (double) ;
 int Sleep (int ) ;
 double Util_time () ;
 int nanosleep (struct timespec*,int *) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int snooze (double) ;
 int usleep (double) ;

void Util_sleep(double s)
{



 if (s > 0) {
  double curtime = Util_time();
  while ((curtime + s) > Util_time());

 }

}
