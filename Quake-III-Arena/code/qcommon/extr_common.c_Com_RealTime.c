
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_isdst; int tm_yday; int tm_wday; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_3__ {int tm_isdst; int tm_yday; int tm_wday; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef TYPE_1__ qtime_t ;


 struct tm* localtime (int*) ;
 int time (int *) ;

int Com_RealTime(qtime_t *qtime) {
 time_t t;
 struct tm *tms;

 t = time(((void*)0));
 if (!qtime)
  return t;
 tms = localtime(&t);
 if (tms) {
  qtime->tm_sec = tms->tm_sec;
  qtime->tm_min = tms->tm_min;
  qtime->tm_hour = tms->tm_hour;
  qtime->tm_mday = tms->tm_mday;
  qtime->tm_mon = tms->tm_mon;
  qtime->tm_year = tms->tm_year;
  qtime->tm_wday = tms->tm_wday;
  qtime->tm_yday = tms->tm_yday;
  qtime->tm_isdst = tms->tm_isdst;
 }
 return t;
}
