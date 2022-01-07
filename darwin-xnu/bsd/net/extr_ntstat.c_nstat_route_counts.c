
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; struct nstat_counts* rt_stats; } ;
struct nstat_counts {scalar_t__ nstat_cell_txbytes; scalar_t__ nstat_cell_rxbytes; int nstat_var_rtt; int nstat_avg_rtt; int nstat_min_rtt; int nstat_connectsuccesses; int nstat_connectattempts; int nstat_txretransmit; int nstat_rxoutoforderbytes; int nstat_rxduplicatebytes; int nstat_txbytes; int nstat_txpackets; int nstat_rxbytes; int nstat_rxpackets; } ;
typedef scalar_t__ nstat_provider_cookie_t ;
typedef int errno_t ;


 int RTF_UP ;
 int atomic_get_64 (int ,int *) ;
 int bzero (struct nstat_counts*,int) ;

__attribute__((used)) static errno_t
nstat_route_counts(
 nstat_provider_cookie_t cookie,
 struct nstat_counts *out_counts,
 int *out_gone)
{
 struct rtentry *rt = (struct rtentry*)cookie;
 struct nstat_counts *rt_stats = rt->rt_stats;

 if (out_gone) *out_gone = 0;

 if (out_gone && (rt->rt_flags & RTF_UP) == 0) *out_gone = 1;

 if (rt_stats)
 {
  atomic_get_64(out_counts->nstat_rxpackets, &rt_stats->nstat_rxpackets);
  atomic_get_64(out_counts->nstat_rxbytes, &rt_stats->nstat_rxbytes);
  atomic_get_64(out_counts->nstat_txpackets, &rt_stats->nstat_txpackets);
  atomic_get_64(out_counts->nstat_txbytes, &rt_stats->nstat_txbytes);
  out_counts->nstat_rxduplicatebytes = rt_stats->nstat_rxduplicatebytes;
  out_counts->nstat_rxoutoforderbytes = rt_stats->nstat_rxoutoforderbytes;
  out_counts->nstat_txretransmit = rt_stats->nstat_txretransmit;
  out_counts->nstat_connectattempts = rt_stats->nstat_connectattempts;
  out_counts->nstat_connectsuccesses = rt_stats->nstat_connectsuccesses;
  out_counts->nstat_min_rtt = rt_stats->nstat_min_rtt;
  out_counts->nstat_avg_rtt = rt_stats->nstat_avg_rtt;
  out_counts->nstat_var_rtt = rt_stats->nstat_var_rtt;
  out_counts->nstat_cell_rxbytes = out_counts->nstat_cell_txbytes = 0;
 }
 else
 {
  bzero(out_counts, sizeof(*out_counts));
 }

 return 0;
}
