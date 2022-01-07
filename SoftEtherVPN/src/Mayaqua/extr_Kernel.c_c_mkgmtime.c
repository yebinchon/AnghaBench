
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_64t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_yday; unsigned int tm_wday; scalar_t__ tm_isdst; } ;


 int ADJUST_TM (int,int,int) ;
 int TM_HOUR_MAX ;
 int TM_MDAY_MAX ;
 int TM_MIN_MAX ;
 size_t TM_MON_MAX ;
 int TM_SEC_MAX ;
 int TM_YEAR_MAX ;
 scalar_t__ leap (int) ;
 int monthlen (int,int) ;
 scalar_t__ nleap (int) ;
 int* ydays ;

time_64t c_mkgmtime(struct tm *tm)
{
 int years, months, days, hours, minutes, seconds;

 years = tm->tm_year + 1900;
 months = tm->tm_mon;
 days = tm->tm_mday - 1;
 hours = tm->tm_hour;
 minutes = tm->tm_min;
 seconds = tm->tm_sec;

 ADJUST_TM(seconds, minutes, 60);
 ADJUST_TM(minutes, hours, 60);
 ADJUST_TM(hours, days, 24);
 ADJUST_TM(months, years, 12);
 if (days < 0)
  do {
   if (--months < 0) {
    --years;
    months = 11;
   }
   days += monthlen(months, years);
  } while (days < 0);
 else
  while (days >= monthlen(months, years)) {
   days -= monthlen(months, years);
   if (++months >= 12) {
    ++years;
    months = 0;
   }
  }


  tm->tm_year = years - 1900;
  tm->tm_mon = months;
  tm->tm_mday = days + 1;
  tm->tm_hour = hours;
  tm->tm_min = minutes;
  tm->tm_sec = seconds;


  days += ydays[months] + (months > 1 && leap (years));
  tm->tm_yday = days;


  days = (unsigned)days + 365 * (unsigned)(years - 1970) +
   (unsigned)(nleap (years));
  tm->tm_wday = ((unsigned)days + 4) % 7;
  tm->tm_isdst = 0;

  if (years < 1970)
   return (time_64t)-1;
  return (time_64t)(86400L * (unsigned long)(unsigned)days +
   3600L * (unsigned long)hours +
   (unsigned long)(60 * minutes + seconds));
}
