
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int dummy; } ;
typedef int net_perf_t ;


 int ip_perf_record_stats (int *,struct timeval*,struct timeval*,int ) ;
 int microtime (struct timeval*) ;

void net_perf_measure_time(net_perf_t *npp, struct timeval *start, uint64_t num_pkts)
{
 struct timeval stop;
 microtime(&stop);
 ip_perf_record_stats(npp, start, &stop, num_pkts);
}
