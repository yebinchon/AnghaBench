
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_64t ;
struct tm {int dummy; } ;


 int c_gmtime_r (scalar_t__*,struct tm*) ;
 scalar_t__ c_mkgmtime (struct tm*) ;

void NormalizeTm(struct tm *t)
{
 time_64t tmp;

 if (t == ((void*)0))
 {
  return;
 }

 tmp = c_mkgmtime(t);
 if (tmp == (time_64t)-1)
 {
  return;
 }

 c_gmtime_r(&tmp, t);
}
