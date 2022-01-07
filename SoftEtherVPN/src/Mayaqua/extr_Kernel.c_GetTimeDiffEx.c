
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int wYear; } ;
typedef struct tm SYSTEMTIME ;
typedef scalar_t__ INT64 ;
typedef scalar_t__ INT ;


 int Copy (struct tm*,struct tm*,int) ;
 int SystemToTm (struct tm*,struct tm*) ;
 scalar_t__ SystemToUINT64 (struct tm*) ;
 int TmToSystem (struct tm*,struct tm*) ;
 scalar_t__ c_mkgmtime (struct tm*) ;
 struct tm* gmtime (scalar_t__*) ;
 int gmtime_r (scalar_t__*,struct tm*) ;
 struct tm* localtime (scalar_t__*) ;
 int localtime_r (scalar_t__*,struct tm*) ;
 scalar_t__ mktime (struct tm*) ;

INT64 GetTimeDiffEx(SYSTEMTIME *basetime, bool local_time)
{
 time_t tmp;
 struct tm t1, t2;
 SYSTEMTIME snow;
 struct tm now;
 SYSTEMTIME s1, s2;
 INT64 ret;

 Copy(&snow, basetime, sizeof(SYSTEMTIME));

 if (sizeof(time_t) == 4)
 {
  if (snow.wYear >= 2038)
  {

   snow.wYear = 2037;
  }
 }

 SystemToTm(&now, &snow);
 if (local_time == 0)
 {
  tmp = (time_t)c_mkgmtime(&now);
 }
 else
 {
  tmp = mktime(&now);
 }

 if (tmp == (time_t)-1)
 {
  return 0;
 }


 Copy(&t1, localtime(&tmp), sizeof(struct tm));
 Copy(&t2, gmtime(&tmp), sizeof(struct tm));





 TmToSystem(&s1, &t1);
 TmToSystem(&s2, &t2);

 ret = (INT)SystemToUINT64(&s1) - (INT)SystemToUINT64(&s2);

 return ret;
}
