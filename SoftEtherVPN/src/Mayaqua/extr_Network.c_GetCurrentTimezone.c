
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tz ;
typedef int tv ;
struct timezone {int tz_minuteswest; } ;
struct timeval {int tz_minuteswest; } ;


 int GetCurrentTimezoneWin32 () ;
 int Zero (struct timezone*,int) ;
 int gettimeofday (struct timezone*,struct timezone*) ;
 int timezone ;
 int tzset () ;

int GetCurrentTimezone()
{
 int ret = 0;




 {
  tzset();

  ret = timezone / 60;

 }


 return ret;
}
