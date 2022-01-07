
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct tcpiphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {int t_flags; int t_maxopd; int t_maxseg; scalar_t__ t_srtt; int snd_ssthresh; int t_rttmin; struct inpcb* t_inpcb; } ;
struct TYPE_6__ {int sb_hiwat; } ;
struct socket {TYPE_2__ so_rcv; TYPE_2__ so_snd; } ;
struct TYPE_7__ {int rmx_rtt; scalar_t__ rmx_mtu; int rmx_sendpipe; int rmx_recvpipe; int rmx_ssthresh; } ;
struct rtentry {TYPE_3__ rt_rmx; struct ifnet* rt_ifp; } ;
struct rmxp_tao {int tao_mssopt; } ;
struct ip6_hdr {int dummy; } ;
struct inpcb {int inp_vflag; struct socket* inp_socket; } ;
struct ifnet {scalar_t__ if_type; int if_baudrate; } ;
struct TYPE_8__ {int (* cwnd_init ) (struct tcpcb*) ;} ;
struct TYPE_5__ {int tcps_usedssthresh; } ;


 int ASSERT (int) ;
 TYPE_4__* CC_ALGO (struct tcpcb*) ;
 int FALSE ;
 scalar_t__ IFT_PPP ;
 int INP_IPV6 ;
 int MCLBYTES ;
 int MSIZE ;
 int RT_UNLOCK (struct rtentry*) ;
 scalar_t__ TCPOLEN_TSTAMP_APPA ;
 int TCPTV_REXMTMIN ;
 int TCP_CC_CWND_INIT ;
 int TCP_MAXWIN ;
 int TCP_MAX_WINSHIFT ;
 int TF_LOCAL ;
 int TF_NOOPT ;
 int TF_RCVD_TSTMP ;
 int TF_REQ_TSTMP ;
 int TF_SLOWLINK ;
 void* max (int,int) ;
 int min (int,int) ;
 scalar_t__ mptcp_adj_mss (struct tcpcb*,int ) ;
 int necp_socket_get_effective_mtu (struct inpcb*,int) ;
 struct rmxp_tao* rmx_taop (TYPE_3__) ;
 int sb_max ;
 int sbreserve (TYPE_2__*,int) ;
 int set_tcp_stream_priority (struct socket*) ;
 scalar_t__ slowlink_wsize ;
 int stub1 (struct tcpcb*) ;
 int tcp_TCPTV_MIN ;
 int tcp_ccdbg_trace (struct tcpcb*,int *,int ) ;
 int tcp_getrt_rtt (struct tcpcb*,struct rtentry*) ;
 int tcp_maxmtu (struct rtentry*) ;
 int tcp_maxmtu6 (struct rtentry*) ;
 int tcp_minmss ;
 int tcp_mssdflt ;
 struct rtentry* tcp_rtlookup (struct inpcb*,unsigned int) ;
 struct rtentry* tcp_rtlookup6 (struct inpcb*,unsigned int) ;
 int tcp_update_mss_locked (struct socket*,struct ifnet*) ;
 int tcp_v6mssdflt ;
 TYPE_1__ tcpstat ;

void
tcp_mss(struct tcpcb *tp, int offer, unsigned int input_ifscope)
{
 struct rtentry *rt;
 struct ifnet *ifp;
 int rtt, mss;
 u_int32_t bufsize;
 struct inpcb *inp;
 struct socket *so;
 struct rmxp_tao *taop;
 int origoffer = offer;
 u_int32_t sb_max_corrected;
 int isnetlocal = 0;





 inp = tp->t_inpcb;
 {
  rt = tcp_rtlookup(inp, input_ifscope);
 }
 isnetlocal = (tp->t_flags & TF_LOCAL);

 if (rt == ((void*)0)) {
  tp->t_maxopd = tp->t_maxseg =



  tcp_mssdflt;
  return;
 }
 ifp = rt->rt_ifp;







 if (ifp->if_type == IFT_PPP && slowlink_wsize > 0 &&
     ifp->if_baudrate > 9600 && ifp->if_baudrate <= 128000) {
  tp->t_flags |= TF_SLOWLINK;
 }
 so = inp->inp_socket;

 taop = rmx_taop(rt->rt_rmx);




 if (offer == -1)
  offer = taop->tao_mssopt;




 if (offer == 0)
  offer =



   tcp_mssdflt;
 else {




  offer = max(offer, tcp_minmss);






  offer = max(offer, 64);
 }
 taop->tao_mssopt = offer;






 if (tp->t_srtt == 0 && (rtt = rt->rt_rmx.rmx_rtt) != 0) {
  tcp_getrt_rtt(tp, rt);
 } else {
  tp->t_rttmin = isnetlocal ? tcp_TCPTV_MIN : TCPTV_REXMTMIN;
 }




 mss = tcp_maxmtu(rt);







 mss -= (sizeof (struct tcpiphdr));

 if (rt->rt_rmx.rmx_mtu == 0) {






  if (!isnetlocal)
   mss = min(mss, tcp_mssdflt);
 }

 mss = min(mss, offer);







 tp->t_maxopd = mss;





 if ((tp->t_flags & (TF_REQ_TSTMP|TF_NOOPT)) == TF_REQ_TSTMP &&
     (origoffer == -1 ||
      (tp->t_flags & TF_RCVD_TSTMP) == TF_RCVD_TSTMP))
  mss -= TCPOLEN_TSTAMP_APPA;




 tp->t_maxseg = mss;





 sb_max_corrected = (sb_max * (u_int64_t)MCLBYTES) / (MSIZE + MCLBYTES);
  bufsize = so->so_snd.sb_hiwat;
 if (bufsize < mss)
  mss = bufsize;
 else {
  bufsize = (((bufsize + (u_int64_t)mss - 1) / (u_int64_t)mss) * (u_int64_t)mss);
  if (bufsize > sb_max_corrected)
   bufsize = sb_max_corrected;
  (void)sbreserve(&so->so_snd, bufsize);
 }
 tp->t_maxseg = mss;

 ASSERT(tp->t_maxseg);





 tcp_update_mss_locked(so, ifp);





  bufsize = so->so_rcv.sb_hiwat;
 if (bufsize > mss) {
  bufsize = (((bufsize + (u_int64_t)mss - 1) / (u_int64_t)mss) * (u_int64_t)mss);
  if (bufsize > sb_max_corrected)
   bufsize = sb_max_corrected;
  (void)sbreserve(&so->so_rcv, bufsize);
 }

 set_tcp_stream_priority(so);

 if (rt->rt_rmx.rmx_ssthresh) {






  tp->snd_ssthresh = max(2 * mss, rt->rt_rmx.rmx_ssthresh);
  tcpstat.tcps_usedssthresh++;
 } else {
  tp->snd_ssthresh = TCP_MAXWIN << TCP_MAX_WINSHIFT;
 }





 if (CC_ALGO(tp)->cwnd_init != ((void*)0))
  CC_ALGO(tp)->cwnd_init(tp);

 tcp_ccdbg_trace(tp, ((void*)0), TCP_CC_CWND_INIT);


 RT_UNLOCK(rt);
}
