#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct tcpiphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {int t_flags; int t_maxopd; int t_maxseg; scalar_t__ t_srtt; int snd_ssthresh; int /*<<< orphan*/  t_rttmin; struct inpcb* t_inpcb; } ;
struct TYPE_6__ {int sb_hiwat; } ;
struct socket {TYPE_2__ so_rcv; TYPE_2__ so_snd; } ;
struct TYPE_7__ {int rmx_rtt; scalar_t__ rmx_mtu; int rmx_sendpipe; int rmx_recvpipe; int rmx_ssthresh; } ;
struct rtentry {TYPE_3__ rt_rmx; struct ifnet* rt_ifp; } ;
struct rmxp_tao {int tao_mssopt; } ;
struct ip6_hdr {int dummy; } ;
struct inpcb {int inp_vflag; struct socket* inp_socket; } ;
struct ifnet {scalar_t__ if_type; int if_baudrate; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* cwnd_init ) (struct tcpcb*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  tcps_usedssthresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (struct tcpcb*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IFT_PPP ; 
 int INP_IPV6 ; 
 int MCLBYTES ; 
 int MSIZE ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 scalar_t__ TCPOLEN_TSTAMP_APPA ; 
 int /*<<< orphan*/  TCPTV_REXMTMIN ; 
 int /*<<< orphan*/  TCP_CC_CWND_INIT ; 
 int TCP_MAXWIN ; 
 int TCP_MAX_WINSHIFT ; 
 int TF_LOCAL ; 
 int TF_NOOPT ; 
 int TF_RCVD_TSTMP ; 
 int TF_REQ_TSTMP ; 
 int TF_SLOWLINK ; 
 void* FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inpcb*,int) ; 
 struct rmxp_tao* FUNC7 (TYPE_3__) ; 
 int sb_max ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 scalar_t__ slowlink_wsize ; 
 int /*<<< orphan*/  FUNC10 (struct tcpcb*) ; 
 int /*<<< orphan*/  tcp_TCPTV_MIN ; 
 int /*<<< orphan*/  FUNC11 (struct tcpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*,struct rtentry*) ; 
 int FUNC13 (struct rtentry*) ; 
 int FUNC14 (struct rtentry*) ; 
 int tcp_minmss ; 
 int tcp_mssdflt ; 
 struct rtentry* FUNC15 (struct inpcb*,unsigned int) ; 
 struct rtentry* FUNC16 (struct inpcb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*,struct ifnet*) ; 
 int tcp_v6mssdflt ; 
 TYPE_1__ tcpstat ; 

void
FUNC18(struct tcpcb *tp, int offer, unsigned int input_ifscope)
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
#if INET6
	int isipv6;
	int min_protoh;
#endif

	inp = tp->t_inpcb;
#if INET6
	isipv6 = ((inp->inp_vflag & INP_IPV6) != 0) ? 1 : 0;
	min_protoh = isipv6 ? sizeof (struct ip6_hdr) + sizeof (struct tcphdr)
			    : sizeof (struct tcpiphdr);
#else
#define min_protoh  (sizeof (struct tcpiphdr))
#endif

#if INET6
	if (isipv6) {
		rt = tcp_rtlookup6(inp, input_ifscope);
	}
	else
#endif /* INET6 */
	{
		rt = FUNC15(inp, input_ifscope);
	}
	isnetlocal = (tp->t_flags & TF_LOCAL);

	if (rt == NULL) {
		tp->t_maxopd = tp->t_maxseg =
#if INET6
		isipv6 ? tcp_v6mssdflt :
#endif /* INET6 */
		tcp_mssdflt;
		return;
	}
	ifp = rt->rt_ifp;
	/*
	 * Slower link window correction:
	 * If a value is specificied for slowlink_wsize use it for
	 * PPP links believed to be on a serial modem (speed <128Kbps).
	 * Excludes 9600bps as it is the default value adversized
	 * by pseudo-devices over ppp.
	 */
	if (ifp->if_type == IFT_PPP && slowlink_wsize > 0 &&
	    ifp->if_baudrate > 9600 && ifp->if_baudrate <= 128000) {
		tp->t_flags |= TF_SLOWLINK;
	}
	so = inp->inp_socket;

	taop = FUNC7(rt->rt_rmx);
	/*
	 * Offer == -1 means that we didn't receive SYN yet,
	 * use cached value in that case;
	 */
	if (offer == -1)
		offer = taop->tao_mssopt;
	/*
	 * Offer == 0 means that there was no MSS on the SYN segment,
	 * in this case we use tcp_mssdflt.
	 */
	if (offer == 0)
		offer =
#if INET6
			isipv6 ? tcp_v6mssdflt :
#endif /* INET6 */
			tcp_mssdflt;
	else {
		/*
		 * Prevent DoS attack with too small MSS. Round up
		 * to at least minmss.
		 */
		offer = FUNC3(offer, tcp_minmss);
		/*
		 * Sanity check: make sure that maxopd will be large
		 * enough to allow some data on segments even is the
		 * all the option space is used (40bytes).  Otherwise
		 * funny things may happen in tcp_output.
		 */
		offer = FUNC3(offer, 64);
	}
	taop->tao_mssopt = offer;

	/*
	 * While we're here, check if there's an initial rtt
	 * or rttvar.  Convert from the route-table units
	 * to scaled multiples of the slow timeout timer.
	 */
	if (tp->t_srtt == 0 && (rtt = rt->rt_rmx.rmx_rtt) != 0) {
		FUNC12(tp, rt);
	} else {
		tp->t_rttmin = isnetlocal ? tcp_TCPTV_MIN : TCPTV_REXMTMIN;
	}

#if INET6
	mss = (isipv6 ? tcp_maxmtu6(rt) : tcp_maxmtu(rt));
#else
	mss = FUNC13(rt);
#endif

#if NECP
	// At this point, the mss is just the MTU. Adjust if necessary.
	mss = necp_socket_get_effective_mtu(inp, mss);
#endif /* NECP */

	mss -= min_protoh;

	if (rt->rt_rmx.rmx_mtu == 0) {
#if INET6
		if (isipv6) {
			if (!isnetlocal)
				mss = min(mss, tcp_v6mssdflt);
		} else
#endif /* INET6 */
		if (!isnetlocal)
			mss = FUNC4(mss, tcp_mssdflt);
	}

	mss = FUNC4(mss, offer);
	/*
	 * maxopd stores the maximum length of data AND options
	 * in a segment; maxseg is the amount of data in a normal
	 * segment.  We need to store this value (maxopd) apart
	 * from maxseg, because now every segment carries options
	 * and thus we normally have somewhat less data in segments.
	 */
	tp->t_maxopd = mss;

	/*
	 * origoffer==-1 indicates, that no segments were received yet.
	 * In this case we just guess.
	 */
	if ((tp->t_flags & (TF_REQ_TSTMP|TF_NOOPT)) == TF_REQ_TSTMP &&
	    (origoffer == -1 ||
	     (tp->t_flags & TF_RCVD_TSTMP) == TF_RCVD_TSTMP))
		mss -= TCPOLEN_TSTAMP_APPA;

#if MPTCP
	mss -= mptcp_adj_mss(tp, FALSE);
#endif /* MPTCP */
	tp->t_maxseg = mss;

	/*
	 * Calculate corrected value for sb_max; ensure to upgrade the
	 * numerator for large sb_max values else it will overflow.
	 */
	sb_max_corrected = (sb_max * (u_int64_t)MCLBYTES) / (MSIZE + MCLBYTES);

	/*
	 * If there's a pipesize (ie loopback), change the socket
	 * buffer to that size only if it's bigger than the current
	 * sockbuf size.  Make the socket buffers an integral
	 * number of mss units; if the mss is larger than
	 * the socket buffer, decrease the mss.
	 */
#if RTV_SPIPE
	bufsize = rt->rt_rmx.rmx_sendpipe;
	if (bufsize < so->so_snd.sb_hiwat)
#endif
		bufsize = so->so_snd.sb_hiwat;
	if (bufsize < mss)
		mss = bufsize;
	else {
		bufsize = (((bufsize + (u_int64_t)mss - 1) / (u_int64_t)mss) * (u_int64_t)mss);
		if (bufsize > sb_max_corrected)
			bufsize = sb_max_corrected;
		(void)FUNC8(&so->so_snd, bufsize);
	}
	tp->t_maxseg = mss;

	FUNC0(tp->t_maxseg);

	/*
	 * Update MSS using recommendation from link status report. This is
	 * temporary
	 */
	FUNC17(so, ifp);

#if RTV_RPIPE
	bufsize = rt->rt_rmx.rmx_recvpipe;
	if (bufsize < so->so_rcv.sb_hiwat)
#endif
		bufsize = so->so_rcv.sb_hiwat;
	if (bufsize > mss) {
		bufsize = (((bufsize + (u_int64_t)mss - 1) / (u_int64_t)mss) * (u_int64_t)mss);
		if (bufsize > sb_max_corrected)
			bufsize = sb_max_corrected;
		(void)FUNC8(&so->so_rcv, bufsize);
	}

	FUNC9(so);

	if (rt->rt_rmx.rmx_ssthresh) {
		/*
		 * There's some sort of gateway or interface
		 * buffer limit on the path.  Use this to set
		 * slow-start threshold, but set the threshold to
		 * no less than 2*mss.
		 */
		tp->snd_ssthresh = FUNC3(2 * mss, rt->rt_rmx.rmx_ssthresh);
		tcpstat.tcps_usedssthresh++;
	} else {
		tp->snd_ssthresh = TCP_MAXWIN << TCP_MAX_WINSHIFT;
	}

	/*
	 * Set the slow-start flight size depending on whether this
	 * is a local network or not.
	 */
	if (FUNC1(tp)->cwnd_init != NULL)
		FUNC1(tp)->cwnd_init(tp);

	FUNC11(tp, NULL, TCP_CC_CWND_INIT);

	/* Route locked during lookup above */
	FUNC2(rt);
}