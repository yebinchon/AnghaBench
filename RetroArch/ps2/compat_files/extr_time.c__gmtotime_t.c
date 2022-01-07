
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int DAYS_YEAR ;
 long HOURS_DAY ;
 int MAX_SUPPORTED_YEAR ;
 int MINS_HOUR ;
 int MIN_SUPPORTED_YEAR ;
 int SECS_MIN ;
 scalar_t__* _days ;

__attribute__((used)) static time_t _gmtotime_t (
        int yr,
        int mo,
        int dy,
        int hr,
        int mn,
        int sc
        )
{
   int passed_years;
   long passed_days;
   long passed_seconds_current_day;
   time_t seconds_from_1970 = -1;

   if ((yr >= MIN_SUPPORTED_YEAR) || (yr <= MAX_SUPPORTED_YEAR)) {
      passed_years = (long)yr - MIN_SUPPORTED_YEAR;

      passed_days = passed_years * DAYS_YEAR;
      passed_days += (passed_years >> 2) * (DAYS_YEAR + 1);
      passed_days += dy + _days[mo - 1];
      if ( !(yr & 3) && (mo > 2) ) {
         passed_days++;
      }
      passed_seconds_current_day = (((hr * MINS_HOUR) + mn) * SECS_MIN) + sc;
      seconds_from_1970 = (passed_days * HOURS_DAY * MINS_HOUR * SECS_MIN) + passed_seconds_current_day;
   }

   return seconds_from_1970;
}
