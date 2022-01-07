
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_64t ;
struct tm {int dummy; } ;


 int c_timesub (int const*,long,struct tm*) ;

struct tm * c_gmtime_r(const time_64t* timep, struct tm *tm)
{
 c_timesub(timep, 0L, tm);
 return tm;
}
