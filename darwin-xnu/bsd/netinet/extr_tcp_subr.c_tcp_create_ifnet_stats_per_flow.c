
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rxmitpkts; int rxoutoforderbytes; int txretransmitbytes; } ;
struct tcpcb {int t_flags; TYPE_2__* t_bwmeas; int t_rttvar; int t_rttupdated; int t_srtt; int t_dsack_recvd; int t_dsack_sent; int t_reordered_pkts; int t_sack_recovery_episode; int t_pawsdrop; int t_rcvoopack; TYPE_1__ t_stat; int ecn_flags; struct inpcb* t_inpcb; } ;
struct socket {scalar_t__ so_error; TYPE_3__* so_tc_stats; } ;
struct inpcb {int inp_vflag; TYPE_4__* inp_stat; struct socket* inp_socket; } ;
struct ifnet_stats_per_flow {int ipv4; int local; int connreset; int conntimeout; scalar_t__ bw_sndbw_max; scalar_t__ bw_rcvbw_max; int rxpackets; int txpackets; int bk_txpackets; int rttmin; int rttvar; int rttupdated; int srtt; int dsack_recvd; int dsack_sent; int reordered_pkts; int sack_recovery_episodes; int pawsdrop; int rcvoopack; int rxmitpkts; int rxoutoforderbytes; int txretransmitbytes; int ecn_flags; } ;
struct TYPE_8__ {int rxpackets; int txpackets; } ;
struct TYPE_7__ {int txpackets; } ;
struct TYPE_6__ {scalar_t__ bw_sndbw_max; scalar_t__ bw_rcvbw_max; } ;


 scalar_t__ ECONNRESET ;
 scalar_t__ ETIMEDOUT ;
 int INP_IPV6 ;
 size_t MBUF_TC_BK ;
 int TF_LOCAL ;
 int bzero (struct ifnet_stats_per_flow*,int) ;
 int get_base_rtt (struct tcpcb*) ;

__attribute__((used)) static inline void
tcp_create_ifnet_stats_per_flow(struct tcpcb *tp,
    struct ifnet_stats_per_flow *ifs)
{
 struct inpcb *inp;
 struct socket *so;
 if (tp == ((void*)0) || ifs == ((void*)0))
  return;

 bzero(ifs, sizeof(*ifs));
 inp = tp->t_inpcb;
 so = inp->inp_socket;

 ifs->ipv4 = (inp->inp_vflag & INP_IPV6) ? 0 : 1;
 ifs->local = (tp->t_flags & TF_LOCAL) ? 1 : 0;
 ifs->connreset = (so->so_error == ECONNRESET) ? 1 : 0;
 ifs->conntimeout = (so->so_error == ETIMEDOUT) ? 1 : 0;
 ifs->ecn_flags = tp->ecn_flags;
 ifs->txretransmitbytes = tp->t_stat.txretransmitbytes;
 ifs->rxoutoforderbytes = tp->t_stat.rxoutoforderbytes;
 ifs->rxmitpkts = tp->t_stat.rxmitpkts;
 ifs->rcvoopack = tp->t_rcvoopack;
 ifs->pawsdrop = tp->t_pawsdrop;
 ifs->sack_recovery_episodes = tp->t_sack_recovery_episode;
 ifs->reordered_pkts = tp->t_reordered_pkts;
 ifs->dsack_sent = tp->t_dsack_sent;
 ifs->dsack_recvd = tp->t_dsack_recvd;
 ifs->srtt = tp->t_srtt;
 ifs->rttupdated = tp->t_rttupdated;
 ifs->rttvar = tp->t_rttvar;
 ifs->rttmin = get_base_rtt(tp);
 if (tp->t_bwmeas != ((void*)0) && tp->t_bwmeas->bw_sndbw_max > 0) {
  ifs->bw_sndbw_max = tp->t_bwmeas->bw_sndbw_max;
 } else {
  ifs->bw_sndbw_max = 0;
 }
 if (tp->t_bwmeas!= ((void*)0) && tp->t_bwmeas->bw_rcvbw_max > 0) {
  ifs->bw_rcvbw_max = tp->t_bwmeas->bw_rcvbw_max;
 } else {
  ifs->bw_rcvbw_max = 0;
 }
 ifs->bk_txpackets = so->so_tc_stats[MBUF_TC_BK].txpackets;
 ifs->txpackets = inp->inp_stat->txpackets;
 ifs->rxpackets = inp->inp_stat->rxpackets;
}
