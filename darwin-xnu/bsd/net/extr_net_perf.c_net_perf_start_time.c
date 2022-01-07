
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int net_perf_t ;


 int microtime (struct timeval*) ;

void net_perf_start_time(net_perf_t *npp, struct timeval *tv)
{
#pragma unused(npp)
 microtime(tv);
}
