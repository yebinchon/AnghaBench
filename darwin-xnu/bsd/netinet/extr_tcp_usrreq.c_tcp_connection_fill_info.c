
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int rxoutoforderbytes; int rxmitpkts; int txretransmitbytes; } ;
struct tcpcb {scalar_t__ t_state; scalar_t__ t_rxtshift; int t_flagsext; scalar_t__* t_timer; int t_srtt; int t_rttvar; int t_tfo_stats; TYPE_4__ t_stat; int t_rttcur; int rcv_wnd; int snd_wnd; int snd_cwnd; int snd_ssthresh; int t_maxseg; int t_rxtcur; int rcv_scale; int snd_scale; struct inpcb* t_inpcb; } ;
struct tcp_connection_info {scalar_t__ tcpi_state; int tcpi_srtt; int tcpi_rttvar; int tcpi_tfo_syn_data_rcv; int tcpi_tfo_cookie_req_rcv; int tcpi_tfo_cookie_sent; int tcpi_tfo_cookie_invalid; int tcpi_tfo_cookie_req; int tcpi_tfo_cookie_rcv; int tcpi_tfo_syn_data_sent; int tcpi_tfo_syn_data_acked; int tcpi_tfo_syn_loss; int tcpi_tfo_cookie_wrong; int tcpi_tfo_no_cookie_rcv; int tcpi_tfo_heuristics_disable; int tcpi_tfo_send_blackhole; int tcpi_tfo_recv_blackhole; int tcpi_tfo_onebyte_proxy; int tcpi_rxoutoforderbytes; int tcpi_rxbytes; int tcpi_rxpackets; int tcpi_txretransmitpackets; int tcpi_txretransmitbytes; int tcpi_txbytes; int tcpi_txpackets; int tcpi_rttcur; int tcpi_rcv_wnd; int tcpi_snd_sbbytes; int tcpi_snd_wnd; int tcpi_snd_cwnd; int tcpi_snd_ssthresh; int tcpi_maxseg; int tcpi_rto; int tcpi_flags; int tcpi_options; int tcpi_rcv_wscale; int tcpi_snd_wscale; } ;
struct inpcb {TYPE_3__* inp_stat; TYPE_2__* inp_socket; } ;
struct TYPE_7__ {int rxbytes; int rxpackets; int txbytes; int txpackets; } ;
struct TYPE_5__ {int sb_cc; } ;
struct TYPE_6__ {TYPE_1__ so_snd; } ;


 scalar_t__ IN_FASTRECOVERY (struct tcpcb*) ;
 scalar_t__ SACK_ENABLED (struct tcpcb*) ;
 int TCPCI_FLAG_LOSSRECOVERY ;
 int TCPCI_FLAG_REORDERING_DETECTED ;
 int TCPCI_OPT_ECN ;
 int TCPCI_OPT_SACK ;
 int TCPCI_OPT_TIMESTAMPS ;
 int TCPCI_OPT_WSCALE ;
 scalar_t__ TCPS_LISTEN ;
 size_t TCPT_REXMT ;
 scalar_t__ TCP_ECN_ENABLED (struct tcpcb*) ;
 int TCP_RTTVAR_SHIFT ;
 int TCP_RTT_SHIFT ;
 scalar_t__ TCP_WINDOW_SCALE_ENABLED (struct tcpcb*) ;
 int TFO_S_COOKIEREQ_RECV ;
 int TFO_S_COOKIE_INVALID ;
 int TFO_S_COOKIE_RCV ;
 int TFO_S_COOKIE_REQ ;
 int TFO_S_COOKIE_SENT ;
 int TFO_S_COOKIE_WRONG ;
 int TFO_S_HEURISTICS_DISABLE ;
 int TFO_S_NO_COOKIE_RCV ;
 int TFO_S_ONE_BYTE_PROXY ;
 int TFO_S_RECV_BLACKHOLE ;
 int TFO_S_SEND_BLACKHOLE ;
 int TFO_S_SYNDATA_RCV ;
 int TFO_S_SYN_DATA_ACKED ;
 int TFO_S_SYN_DATA_SENT ;
 int TFO_S_SYN_LOSS ;
 int TF_PKTS_REORDERED ;
 scalar_t__ TSTMP_SUPPORTED (struct tcpcb*) ;
 int bzero (struct tcp_connection_info*,int) ;

__attribute__((used)) static void
tcp_connection_fill_info(struct tcpcb *tp, struct tcp_connection_info *tci)
{
 struct inpcb *inp = tp->t_inpcb;

 bzero(tci, sizeof(*tci));
 tci->tcpi_state = tp->t_state;
 if (tp->t_state > TCPS_LISTEN) {
  if (TSTMP_SUPPORTED(tp))
   tci->tcpi_options |= TCPCI_OPT_TIMESTAMPS;
  if (SACK_ENABLED(tp))
   tci->tcpi_options |= TCPCI_OPT_SACK;
  if (TCP_WINDOW_SCALE_ENABLED(tp)) {
   tci->tcpi_options |= TCPCI_OPT_WSCALE;
   tci->tcpi_snd_wscale = tp->snd_scale;
   tci->tcpi_rcv_wscale = tp->rcv_scale;
  }
  if (TCP_ECN_ENABLED(tp))
   tci->tcpi_options |= TCPCI_OPT_ECN;
  if (IN_FASTRECOVERY(tp) || tp->t_rxtshift > 0)
   tci->tcpi_flags |= TCPCI_FLAG_LOSSRECOVERY;
  if (tp->t_flagsext & TF_PKTS_REORDERED)
   tci->tcpi_flags |= TCPCI_FLAG_REORDERING_DETECTED;
  tci->tcpi_rto = (tp->t_timer[TCPT_REXMT] > 0) ?
   tp->t_rxtcur : 0;
  tci->tcpi_maxseg = tp->t_maxseg;
  tci->tcpi_snd_ssthresh = tp->snd_ssthresh;
  tci->tcpi_snd_cwnd = tp->snd_cwnd;
  tci->tcpi_snd_wnd = tp->snd_wnd;
  tci->tcpi_snd_sbbytes = inp->inp_socket->so_snd.sb_cc;
  tci->tcpi_rcv_wnd = tp->rcv_wnd;
  tci->tcpi_rttcur = tp->t_rttcur;
  tci->tcpi_srtt = (tp->t_srtt >> TCP_RTT_SHIFT);
  tci->tcpi_rttvar = (tp->t_rttvar >> TCP_RTTVAR_SHIFT);
  tci->tcpi_txpackets = inp->inp_stat->txpackets;
  tci->tcpi_txbytes = inp->inp_stat->txbytes;
  tci->tcpi_txretransmitbytes = tp->t_stat.txretransmitbytes;
  tci->tcpi_txretransmitpackets = tp->t_stat.rxmitpkts;
  tci->tcpi_rxpackets = inp->inp_stat->rxpackets;
  tci->tcpi_rxbytes = inp->inp_stat->rxbytes;
  tci->tcpi_rxoutoforderbytes = tp->t_stat.rxoutoforderbytes;

  tci->tcpi_tfo_syn_data_rcv = !!(tp->t_tfo_stats & TFO_S_SYNDATA_RCV);
  tci->tcpi_tfo_cookie_req_rcv = !!(tp->t_tfo_stats & TFO_S_COOKIEREQ_RECV);
  tci->tcpi_tfo_cookie_sent = !!(tp->t_tfo_stats & TFO_S_COOKIE_SENT);
  tci->tcpi_tfo_cookie_invalid = !!(tp->t_tfo_stats & TFO_S_COOKIE_INVALID);
  tci->tcpi_tfo_cookie_req = !!(tp->t_tfo_stats & TFO_S_COOKIE_REQ);
  tci->tcpi_tfo_cookie_rcv = !!(tp->t_tfo_stats & TFO_S_COOKIE_RCV);
  tci->tcpi_tfo_syn_data_sent = !!(tp->t_tfo_stats & TFO_S_SYN_DATA_SENT);
  tci->tcpi_tfo_syn_data_acked = !!(tp->t_tfo_stats & TFO_S_SYN_DATA_ACKED);
  tci->tcpi_tfo_syn_loss = !!(tp->t_tfo_stats & TFO_S_SYN_LOSS);
  tci->tcpi_tfo_cookie_wrong = !!(tp->t_tfo_stats & TFO_S_COOKIE_WRONG);
  tci->tcpi_tfo_no_cookie_rcv = !!(tp->t_tfo_stats & TFO_S_NO_COOKIE_RCV);
  tci->tcpi_tfo_heuristics_disable = !!(tp->t_tfo_stats & TFO_S_HEURISTICS_DISABLE);
  tci->tcpi_tfo_send_blackhole = !!(tp->t_tfo_stats & TFO_S_SEND_BLACKHOLE);
  tci->tcpi_tfo_recv_blackhole = !!(tp->t_tfo_stats & TFO_S_RECV_BLACKHOLE);
  tci->tcpi_tfo_onebyte_proxy = !!(tp->t_tfo_stats & TFO_S_ONE_BYTE_PROXY);
 }
}
