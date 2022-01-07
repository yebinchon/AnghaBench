
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timezone {int dummy; } ;
struct timeval {long tv_sec; int tv_usec; } ;
struct TYPE_3__ {int wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int GetLocalTime (TYPE_1__*) ;
 scalar_t__ time (int *) ;

int gettimeofday(struct timeval *tv, struct timezone *tz) {
  time_t t;
  t = time(((void*)0));
  SYSTEMTIME st;
  GetLocalTime(&st);

  tv->tv_sec = (long)t;
  tv->tv_usec = st.wMilliseconds * 1000;

  return 0;
}
