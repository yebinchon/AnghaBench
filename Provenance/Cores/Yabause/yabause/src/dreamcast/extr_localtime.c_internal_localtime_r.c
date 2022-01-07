
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; long tm_wday; long tm_yday; size_t tm_mon; long tm_mday; int tm_isdst; scalar_t__ tm_year; } ;


 long DAYSPERWEEK ;
 long EPOCH_WDAY ;
 int EPOCH_YEAR ;
 long SECSPERDAY ;
 long SECSPERHOUR ;
 long SECSPERMIN ;
 scalar_t__ YEAR_BASE ;
 int isleap (int) ;
 int** mon_lengths ;
 long* year_lengths ;

struct tm * internal_localtime_r(const time_t * tim_p, struct tm *res)
{
  long days, rem;
  int y;
  int yleap;
  const int *ip;

  days = ((long) *tim_p) / SECSPERDAY;
  rem = ((long) *tim_p) % SECSPERDAY;
  while (rem < 0)
    {
      rem += SECSPERDAY;
      --days;
    }
  while (rem >= SECSPERDAY)
    {
      rem -= SECSPERDAY;
      ++days;
    }


  res->tm_hour = (int) (rem / SECSPERHOUR);
  rem %= SECSPERHOUR;
  res->tm_min = (int) (rem / SECSPERMIN);
  res->tm_sec = (int) (rem % SECSPERMIN);


  if ((res->tm_wday = ((EPOCH_WDAY + days) % DAYSPERWEEK)) < 0)
    res->tm_wday += DAYSPERWEEK;


  y = EPOCH_YEAR;
  if (days >= 0)
    {
      for (;;)
 {
   yleap = isleap(y);
   if (days < year_lengths[yleap])
     break;
   y++;
   days -= year_lengths[yleap];
 }
    }
  else
    {
      do
 {
   --y;
   yleap = isleap(y);
   days += year_lengths[yleap];
 } while (days < 0);
    }

  res->tm_year = y - YEAR_BASE;
  res->tm_yday = days;
  ip = mon_lengths[yleap];
  for (res->tm_mon = 0; days >= ip[res->tm_mon]; ++res->tm_mon)
    days -= ip[res->tm_mon];
  res->tm_mday = days + 1;


  res->tm_isdst = -1;

  return (res);
}
