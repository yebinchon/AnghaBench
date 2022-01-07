
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int txretransmitbytes; int rxoutoforderbytes; int rxduplicatebytes; } ;
struct tcpcb {scalar_t__ t_state; int t_rttvar; int t_rttbest; int t_srtt; TYPE_2__ t_stat; } ;
struct nstat_tucookie {struct inpcb* inp; } ;
struct nstat_counts {int nstat_connectattempts; int nstat_connectsuccesses; int nstat_wired_txbytes; int nstat_wired_rxbytes; int nstat_wifi_txbytes; int nstat_wifi_rxbytes; int nstat_cell_txbytes; int nstat_cell_rxbytes; int nstat_avg_rtt; int nstat_min_rtt; int nstat_var_rtt; int nstat_txretransmit; int nstat_rxoutoforderbytes; int nstat_rxduplicatebytes; int nstat_txbytes; int nstat_txpackets; int nstat_rxbytes; int nstat_rxpackets; } ;
struct inpcb {TYPE_5__* inp_Wstat; TYPE_4__* inp_wstat; TYPE_3__* inp_cstat; TYPE_1__* inp_stat; } ;
typedef scalar_t__ nstat_provider_cookie_t ;
typedef int errno_t ;
struct TYPE_10__ {int txbytes; int rxbytes; } ;
struct TYPE_9__ {int txbytes; int rxbytes; } ;
struct TYPE_8__ {int txbytes; int rxbytes; } ;
struct TYPE_6__ {int txbytes; int txpackets; int rxbytes; int rxpackets; } ;


 int EINVAL ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_SYN_SENT ;
 int atomic_get_64 (int ,int *) ;
 int bzero (struct nstat_counts*,int) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 scalar_t__ nstat_tcp_gone (scalar_t__) ;

__attribute__((used)) static errno_t
nstat_tcp_counts(
 nstat_provider_cookie_t cookie,
 struct nstat_counts *out_counts,
 int *out_gone)
{
 struct nstat_tucookie *tucookie =
     (struct nstat_tucookie *)cookie;
 struct inpcb *inp;

 bzero(out_counts, sizeof(*out_counts));

 if (out_gone) *out_gone = 0;


 if (nstat_tcp_gone(cookie))
 {
  if (out_gone) *out_gone = 1;
  if (!(inp = tucookie->inp) || !intotcpcb(inp))
   return EINVAL;
 }
 inp = tucookie->inp;
 struct tcpcb *tp = intotcpcb(inp);

 atomic_get_64(out_counts->nstat_rxpackets, &inp->inp_stat->rxpackets);
 atomic_get_64(out_counts->nstat_rxbytes, &inp->inp_stat->rxbytes);
 atomic_get_64(out_counts->nstat_txpackets, &inp->inp_stat->txpackets);
 atomic_get_64(out_counts->nstat_txbytes, &inp->inp_stat->txbytes);
 out_counts->nstat_rxduplicatebytes = tp->t_stat.rxduplicatebytes;
 out_counts->nstat_rxoutoforderbytes = tp->t_stat.rxoutoforderbytes;
 out_counts->nstat_txretransmit = tp->t_stat.txretransmitbytes;
 out_counts->nstat_connectattempts = tp->t_state >= TCPS_SYN_SENT ? 1 : 0;
 out_counts->nstat_connectsuccesses = tp->t_state >= TCPS_ESTABLISHED ? 1 : 0;
 out_counts->nstat_avg_rtt = tp->t_srtt;
 out_counts->nstat_min_rtt = tp->t_rttbest;
 out_counts->nstat_var_rtt = tp->t_rttvar;
 if (out_counts->nstat_avg_rtt < out_counts->nstat_min_rtt)
  out_counts->nstat_min_rtt = out_counts->nstat_avg_rtt;
 atomic_get_64(out_counts->nstat_cell_rxbytes, &inp->inp_cstat->rxbytes);
 atomic_get_64(out_counts->nstat_cell_txbytes, &inp->inp_cstat->txbytes);
 atomic_get_64(out_counts->nstat_wifi_rxbytes, &inp->inp_wstat->rxbytes);
 atomic_get_64(out_counts->nstat_wifi_txbytes, &inp->inp_wstat->txbytes);
 atomic_get_64(out_counts->nstat_wired_rxbytes, &inp->inp_Wstat->rxbytes);
 atomic_get_64(out_counts->nstat_wired_txbytes, &inp->inp_Wstat->txbytes);

 return 0;
}
