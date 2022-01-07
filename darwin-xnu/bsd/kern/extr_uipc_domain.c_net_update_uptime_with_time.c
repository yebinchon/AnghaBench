
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int _net_uptime ;

void
net_update_uptime_with_time(const struct timeval *tvp)
{
 _net_uptime = tvp->tv_sec;




 if (tvp->tv_usec > 500000)
  _net_uptime++;
}
