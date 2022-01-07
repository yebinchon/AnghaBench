
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int EINVAL ;

int
itimerfix(
 struct timeval *tv)
{

 if (tv->tv_sec < 0 || tv->tv_sec > 100000000 ||
     tv->tv_usec < 0 || tv->tv_usec >= 1000000)
  return (EINVAL);
 return (0);
}
