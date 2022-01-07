
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__* np_hist_bars; int np_hist5; int np_hist4; int np_hist3; int np_hist2; int np_hist1; } ;
typedef TYPE_1__ net_perf_t ;


 int OSAddAtomic64 (scalar_t__,int *) ;

void
net_perf_histogram(net_perf_t *npp, uint64_t num_pkts)
{
 if (num_pkts <= npp->np_hist_bars[0]) {
  OSAddAtomic64(num_pkts, &npp->np_hist1);
 } else if (npp->np_hist_bars[0] < num_pkts && num_pkts <= npp->np_hist_bars[1]) {
  OSAddAtomic64(num_pkts, &npp->np_hist2);
 } else if (npp->np_hist_bars[1] < num_pkts && num_pkts <= npp->np_hist_bars[2]) {
  OSAddAtomic64(num_pkts, &npp->np_hist3);
 } else if (npp->np_hist_bars[2] < num_pkts && num_pkts <= npp->np_hist_bars[3]) {
  OSAddAtomic64(num_pkts, &npp->np_hist4);
 } else if (npp->np_hist_bars[3] < num_pkts) {
  OSAddAtomic64(num_pkts, &npp->np_hist5);
 }
}
