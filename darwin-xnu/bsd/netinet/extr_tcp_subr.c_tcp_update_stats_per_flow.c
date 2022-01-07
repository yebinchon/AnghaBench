
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ifnet_stats_per_flow {int ecn_flags; scalar_t__ txretransmitbytes; scalar_t__ rxoutoforderbytes; scalar_t__ ecn_recv_ce; scalar_t__ ecn_recv_ece; scalar_t__ ipv4; scalar_t__ ecn_fallback_reorder; scalar_t__ ecn_fallback_ce; scalar_t__ ecn_fallback_droprxmt; scalar_t__ ecn_fallback_droprst; scalar_t__ ecn_fallback_synloss; scalar_t__ rxmit_drop; scalar_t__ local; } ;
struct ifnet {int if_lim_stat; TYPE_2__* if_ipv6_stat; TYPE_1__* if_ipv4_stat; } ;
struct TYPE_10__ {int rxmit_drop; } ;
struct TYPE_9__ {int rxmit_drop; } ;
struct TYPE_8__ {int tcps_ecn_conn_plnoce; int tcps_ecn_conn_nopl_ce; int tcps_ecn_conn_pl_ce; int tcps_ecn_conn_recv_ece; int tcps_ecn_conn_recv_ce; } ;
struct TYPE_7__ {int ecn_off; int ecn_on; void* timestamp; } ;
struct TYPE_6__ {int ecn_off; int ecn_on; void* timestamp; } ;


 scalar_t__ FLOW_ECN_ENABLED (int) ;
 int IFP_PER_FLOW_STAT (scalar_t__,int ) ;
 int IF_FULLY_ATTACHED (struct ifnet*) ;
 int TE_CLIENT_SETUP ;
 int TE_LOST_SYN ;
 int TE_RECV_ECN_CE ;
 int TE_RECV_ECN_ECE ;
 int TE_SETUPSENT ;
 int ecn_client_setup ;
 int ecn_client_success ;
 int ecn_conn_noplce ;
 int ecn_conn_plce ;
 int ecn_conn_plnoce ;
 int ecn_conn_recv_ce ;
 int ecn_conn_recv_ece ;
 int ecn_fallback_ce ;
 int ecn_fallback_droprst ;
 int ecn_fallback_droprxmt ;
 int ecn_fallback_reorder ;
 int ecn_fallback_synloss ;
 TYPE_5__ ecn_off ;
 int ecn_off_conn ;
 TYPE_4__ ecn_on ;
 int ecn_peer_nosupport ;
 int ecn_recv_ce ;
 int ecn_recv_ece ;
 int ecn_server_setup ;
 int ecn_server_success ;
 int ecn_syn_lost ;
 int ecn_synack_lost ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 void* net_uptime () ;
 int tcp_flow_ecn_perf_stats (struct ifnet_stats_per_flow*,int *) ;
 int tcp_flow_lim_stats (struct ifnet_stats_per_flow*,int *) ;
 TYPE_3__ tcpstat ;

void tcp_update_stats_per_flow(struct ifnet_stats_per_flow *ifs,
    struct ifnet *ifp)
{
 if (ifp == ((void*)0) || !IF_FULLY_ATTACHED(ifp))
  return;

 ifnet_lock_shared(ifp);
 if (ifs->ecn_flags & TE_SETUPSENT) {
  if (ifs->ecn_flags & TE_CLIENT_SETUP) {
   IFP_PER_FLOW_STAT(ifs->ipv4, ecn_client_setup);
   if (FLOW_ECN_ENABLED(ifs->ecn_flags)) {
    IFP_PER_FLOW_STAT(ifs->ipv4,
        ecn_client_success);
   } else if (ifs->ecn_flags & TE_LOST_SYN) {
    IFP_PER_FLOW_STAT(ifs->ipv4,
        ecn_syn_lost);
   } else {
    IFP_PER_FLOW_STAT(ifs->ipv4,
        ecn_peer_nosupport);
   }
  } else {
   IFP_PER_FLOW_STAT(ifs->ipv4, ecn_server_setup);
   if (FLOW_ECN_ENABLED(ifs->ecn_flags)) {
    IFP_PER_FLOW_STAT(ifs->ipv4,
        ecn_server_success);
   } else if (ifs->ecn_flags & TE_LOST_SYN) {
    IFP_PER_FLOW_STAT(ifs->ipv4,
        ecn_synack_lost);
   } else {
    IFP_PER_FLOW_STAT(ifs->ipv4,
        ecn_peer_nosupport);
   }
  }
 } else {
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_off_conn);
 }
 if (FLOW_ECN_ENABLED(ifs->ecn_flags)) {
  if (ifs->ecn_flags & TE_RECV_ECN_CE) {
   tcpstat.tcps_ecn_conn_recv_ce++;
   IFP_PER_FLOW_STAT(ifs->ipv4, ecn_conn_recv_ce);
  }
  if (ifs->ecn_flags & TE_RECV_ECN_ECE) {
   tcpstat.tcps_ecn_conn_recv_ece++;
   IFP_PER_FLOW_STAT(ifs->ipv4, ecn_conn_recv_ece);
  }
  if (ifs->ecn_flags & (TE_RECV_ECN_CE | TE_RECV_ECN_ECE)) {
   if (ifs->txretransmitbytes > 0 ||
       ifs->rxoutoforderbytes > 0) {
    tcpstat.tcps_ecn_conn_pl_ce++;
    IFP_PER_FLOW_STAT(ifs->ipv4, ecn_conn_plce);
   } else {
    tcpstat.tcps_ecn_conn_nopl_ce++;
    IFP_PER_FLOW_STAT(ifs->ipv4, ecn_conn_noplce);
   }
  } else {
   if (ifs->txretransmitbytes > 0 ||
       ifs->rxoutoforderbytes > 0) {
    tcpstat.tcps_ecn_conn_plnoce++;
    IFP_PER_FLOW_STAT(ifs->ipv4, ecn_conn_plnoce);
   }
  }
 }


 if (ifs->local) {
  ifnet_lock_done(ifp);
  return;
 }

 if (ifs->ipv4) {
  ifp->if_ipv4_stat->timestamp = net_uptime();
  if (FLOW_ECN_ENABLED(ifs->ecn_flags)) {
   tcp_flow_ecn_perf_stats(ifs, &ifp->if_ipv4_stat->ecn_on);
  } else {
   tcp_flow_ecn_perf_stats(ifs, &ifp->if_ipv4_stat->ecn_off);
  }
 } else {
  ifp->if_ipv6_stat->timestamp = net_uptime();
  if (FLOW_ECN_ENABLED(ifs->ecn_flags)) {
   tcp_flow_ecn_perf_stats(ifs, &ifp->if_ipv6_stat->ecn_on);
  } else {
   tcp_flow_ecn_perf_stats(ifs, &ifp->if_ipv6_stat->ecn_off);
  }
 }

 if (ifs->rxmit_drop) {
  if (FLOW_ECN_ENABLED(ifs->ecn_flags)) {
   IFP_PER_FLOW_STAT(ifs->ipv4, ecn_on.rxmit_drop);
  } else {
   IFP_PER_FLOW_STAT(ifs->ipv4, ecn_off.rxmit_drop);
  }
 }
 if (ifs->ecn_fallback_synloss)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_fallback_synloss);
 if (ifs->ecn_fallback_droprst)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_fallback_droprst);
 if (ifs->ecn_fallback_droprxmt)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_fallback_droprxmt);
 if (ifs->ecn_fallback_ce)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_fallback_ce);
 if (ifs->ecn_fallback_reorder)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_fallback_reorder);
 if (ifs->ecn_recv_ce > 0)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_recv_ce);
 if (ifs->ecn_recv_ece > 0)
  IFP_PER_FLOW_STAT(ifs->ipv4, ecn_recv_ece);

 tcp_flow_lim_stats(ifs, &ifp->if_lim_stat);
 ifnet_lock_done(ifp);
}
