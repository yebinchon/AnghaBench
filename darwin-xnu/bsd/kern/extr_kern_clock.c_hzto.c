
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; int tv_usec; } ;


 int hz ;
 int microtime (struct timeval*) ;
 int tick ;

int
hzto(struct timeval *tv)
{
 struct timeval now;
 long ticks;
 long sec;

 microtime(&now);
 sec = tv->tv_sec - now.tv_sec;
 if (sec <= 0x7fffffff / 1000 - 1000)
  ticks = ((tv->tv_sec - now.tv_sec) * 1000 +
   (tv->tv_usec - now.tv_usec) / 1000)
    / (tick / 1000);
 else if (sec <= 0x7fffffff / hz)
  ticks = sec * hz;
 else
  ticks = 0x7fffffff;

 return (ticks);
}
