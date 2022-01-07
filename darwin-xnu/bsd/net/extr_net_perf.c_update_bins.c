
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* np_hist_bars; } ;
typedef TYPE_1__ net_perf_t ;


 int NET_PERF_BARS ;
 int bzero (int**,int) ;

__attribute__((used)) static void
update_bins(net_perf_t *npp, uint64_t bins)
{
 bzero(&npp->np_hist_bars, sizeof(npp->np_hist_bars));

 for (int i = 1, j = 0; i <= 64 && j < NET_PERF_BARS; i++) {
  if (bins & 0x1) {
   npp->np_hist_bars[j] = i;
   j++;
  }
  bins >>= 1;
 }
}
