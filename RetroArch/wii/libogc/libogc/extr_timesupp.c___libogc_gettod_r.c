
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {scalar_t__ tz_dsttime; scalar_t__ tz_minuteswest; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct _reent {int dummy; } ;


 int gettick () ;
 int ticks_to_microsecs (int ) ;
 int time (int *) ;

int __libogc_gettod_r(struct _reent *ptr, struct timeval *tp, struct timezone *tz) {

 if (tp != ((void*)0)) {
  tp->tv_sec = time(((void*)0));
  tp->tv_usec = ticks_to_microsecs(gettick())%1000000;
 }
 if (tz != ((void*)0)) {
  tz->tz_minuteswest = 0;
  tz->tz_dsttime = 0;

 }
 return 0;
}
