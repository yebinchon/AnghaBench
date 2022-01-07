
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_64t ;
struct tm {int dummy; } ;


 scalar_t__ c_mkgmtime (struct tm*) ;

time_64t TmToTime(struct tm *t)
{
 time_64t tmp;

 if (t == ((void*)0))
 {
  return 0;
 }

 tmp = c_mkgmtime(t);
 if (tmp == (time_64t)-1)
 {
  return 0;
 }
 return tmp;
}
