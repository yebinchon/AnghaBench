
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int clock_set_calendar_microtime (int ,int ) ;

__attribute__((used)) static void
setthetime(
 struct timeval *tv)
{
 clock_set_calendar_microtime(tv->tv_sec, tv->tv_usec);
}
