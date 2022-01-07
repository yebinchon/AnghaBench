
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_sec; } ;


 int getmicrotime (struct timeval*) ;

uint64_t
pf_calendar_time_second(void)
{
 struct timeval t;

 getmicrotime(&t);
 return (t.tv_sec);
}
