
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int net_perf_t ;


 int bzero (int *,int) ;
 int update_bins (int *,int ) ;

void
net_perf_initialize(net_perf_t *npp, uint64_t bins)
{
 bzero(npp, sizeof(net_perf_t));

 update_bins(npp, bins);
}
