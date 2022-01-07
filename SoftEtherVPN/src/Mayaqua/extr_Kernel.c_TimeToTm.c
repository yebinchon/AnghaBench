
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_64t ;
struct tm {int dummy; } ;


 int Zero (struct tm*,int) ;
 int c_gmtime_r (int *,struct tm*) ;

void TimeToTm(struct tm *t, time_64t time)
{

 if (t == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(struct tm));
 c_gmtime_r(&time, t);
}
