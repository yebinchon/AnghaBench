
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int net_uptime () ;

void
net_uptime2timeval(struct timeval *tv)
{
 if (tv == ((void*)0))
  return;

 tv->tv_usec = 0;
 tv->tv_sec = net_uptime();
}
