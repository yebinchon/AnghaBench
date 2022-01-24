#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  int u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct mbuf {int dummy; } ;
struct ifnet_stat_increment_param {int packets_in; int bytes_in; } ;
struct ifnet {scalar_t__ if_poll_thread; int if_poll_active; scalar_t__ if_poll_req; struct timespec if_poll_cycle; int /*<<< orphan*/  if_poll_lock; int /*<<< orphan*/  (* if_input_poll ) (struct ifnet*,int /*<<< orphan*/ ,int,struct mbuf**,struct mbuf**,int*,int*) ;struct dlil_threading_info* if_inp; } ;
struct dlil_threading_info {scalar_t__ rxpoll_plim; int rxpoll_phiwat; int rxpoll_pavg; int rxpoll_pmax; int rxpoll_wavg; int rxpoll_bavg; int /*<<< orphan*/  rcvq_pkts; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  ifname ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int PSPIN ; 
 int PZERO ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet_stat_increment_param*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int dlil_verbose ; 
 char* FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,struct mbuf*,struct mbuf*,struct ifnet_stat_increment_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ ,int,struct mbuf**,struct mbuf**,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void *v, wait_result_t w)
{
#pragma unused(w)
	struct dlil_threading_info *inp;
	struct ifnet *ifp = v;
	char ifname[IFNAMSIZ + 1];
	struct timespec *ts = NULL;
	struct ifnet_stat_increment_param s;

	FUNC14(ifname, sizeof (ifname), "%s_poller",
	    FUNC4(ifp));
	FUNC2(&s, sizeof (s));

	FUNC9(&ifp->if_poll_lock);

	inp = ifp->if_inp;
	FUNC1(inp != NULL);

	for (;;) {
		if (ifp->if_poll_thread != THREAD_NULL) {
			(void) FUNC11(&ifp->if_poll_thread, &ifp->if_poll_lock,
			    (PZERO - 1) | PSPIN, ifname, ts);
		}

		/* interface is detached (maybe while asleep)? */
		if (ifp->if_poll_thread == THREAD_NULL) {
			FUNC8(ifp, NULL);
			FUNC10(&ifp->if_poll_lock);

			if (dlil_verbose) {
				FUNC12("%s: poller thread terminated\n",
				    FUNC4(ifp));
			}

			/* for the extra refcnt from kernel_thread_start() */
			FUNC16(FUNC3());
			/* this is the end */
			FUNC17(FUNC3());
			/* NOTREACHED */
			return;
		}

		ifp->if_poll_active = 1;
		for (;;) {
			struct mbuf *m_head, *m_tail;
			u_int32_t m_lim, m_cnt, m_totlen;
			u_int16_t req = ifp->if_poll_req;

			FUNC10(&ifp->if_poll_lock);

			/*
			 * If no longer attached, there's nothing to do;
			 * else hold an IO refcnt to prevent the interface
			 * from being detached (will be released below.)
			 */
			if (!FUNC7(ifp, 1)) {
				FUNC9(&ifp->if_poll_lock);
				break;
			}

			m_lim = (inp->rxpoll_plim != 0) ? inp->rxpoll_plim :
			    FUNC0((FUNC13(&inp->rcvq_pkts)),
			    (inp->rxpoll_phiwat << 2));

			if (dlil_verbose > 1) {
				FUNC12("%s: polling up to %d pkts, "
				    "pkts avg %d max %d, wreq avg %d, "
				    "bytes avg %d\n",
				    FUNC4(ifp), m_lim,
				    inp->rxpoll_pavg, inp->rxpoll_pmax,
				    inp->rxpoll_wavg, inp->rxpoll_bavg);
			}

			/* invoke the driver's input poll routine */
			((*ifp->if_input_poll)(ifp, 0, m_lim, &m_head, &m_tail,
			    &m_cnt, &m_totlen));

			if (m_head != NULL) {
				FUNC1(m_tail != NULL && m_cnt > 0);

				if (dlil_verbose > 1) {
					FUNC12("%s: polled %d pkts, "
					    "pkts avg %d max %d, wreq avg %d, "
					    "bytes avg %d\n",
					    FUNC4(ifp), m_cnt,
					    inp->rxpoll_pavg, inp->rxpoll_pmax,
					    inp->rxpoll_wavg, inp->rxpoll_bavg);
				}

				/* stats are required for extended variant */
				s.packets_in = m_cnt;
				s.bytes_in = m_totlen;

				(void) FUNC6(ifp, m_head, m_tail,
				    &s, TRUE, TRUE);
			} else {
				if (dlil_verbose > 1) {
					FUNC12("%s: no packets, "
					    "pkts avg %d max %d, wreq avg %d, "
					    "bytes avg %d\n",
					    FUNC4(ifp), inp->rxpoll_pavg,
					    inp->rxpoll_pmax, inp->rxpoll_wavg,
					    inp->rxpoll_bavg);
				}

				(void) FUNC6(ifp, NULL, NULL,
				    NULL, FALSE, TRUE);
			}

			/* Release the io ref count */
			FUNC5(ifp);

			FUNC9(&ifp->if_poll_lock);

			/* if there's no pending request, we're done */
			if (req == ifp->if_poll_req) {
				break;
			}
		}
		ifp->if_poll_req = 0;
		ifp->if_poll_active = 0;

		/*
		 * Wakeup N ns from now, else sleep indefinitely (ts = NULL)
		 * until ifnet_poll() is called again.
		 */
		ts = &ifp->if_poll_cycle;
		if (ts->tv_sec == 0 && ts->tv_nsec == 0)
			ts = NULL;
	}

	/* NOTREACHED */
}