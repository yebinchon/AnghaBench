#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ip6_hdr {int dummy; } ;
struct inpcb {int in6p_flags; TYPE_3__* in6p_socket; } ;
struct ifnet {int dummy; } ;
typedef  int boolean_t ;
struct TYPE_7__ {int so_options; int /*<<< orphan*/  so_rcv; } ;
struct TYPE_6__ {int /*<<< orphan*/  udps_fullsock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int INP_CONTROLOPTS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int SO_TIMESTAMP ; 
 int SO_TIMESTAMP_CONTINUOUS ; 
 int SO_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int FUNC5 (struct inpcb*,struct mbuf*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 scalar_t__ FUNC8 (struct inpcb*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  rxbytes ; 
 int /*<<< orphan*/  rxpackets ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct sockaddr*,struct mbuf*,struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_2__ udpstat ; 

__attribute__((used)) static void
FUNC12(struct inpcb *last, struct ip6_hdr *ip6,
    struct sockaddr_in6 *udp_in6, struct mbuf *n, int off, struct ifnet *ifp)
{
#pragma unused(ip6)
	struct  mbuf *opts = NULL;
	int ret = 0;
	boolean_t cell = FUNC0(ifp);
	boolean_t wifi = (!cell && FUNC1(ifp));
	boolean_t wired = (!wifi && FUNC2(ifp));

#if CONFIG_MACF_NET
	if (mac_inpcb_check_deliver(last, n, AF_INET6, SOCK_DGRAM) != 0) {
		m_freem(n);
		return;
	}
#endif /* CONFIG_MACF_NET */
	if ((last->in6p_flags & INP_CONTROLOPTS) != 0 ||
	    (last->in6p_socket->so_options & SO_TIMESTAMP) != 0 ||
	    (last->in6p_socket->so_options & SO_TIMESTAMP_MONOTONIC) != 0 ||
		(last->in6p_socket->so_options & SO_TIMESTAMP_CONTINUOUS) != 0) {
		ret = FUNC5(last, n, &opts);
		if (ret != 0) {
			FUNC7(n);
			FUNC7(opts);
			return;
		}
	}
	FUNC6(n, off);
	if (nstat_collect) {
		FUNC3(last, cell, wifi, wired, rxpackets, 1);
		FUNC3(last, cell, wifi, wired, rxbytes, n->m_pkthdr.len);
		FUNC4(last);
	}
	FUNC10(last->in6p_socket, n, 0);
	if (FUNC9(&last->in6p_socket->so_rcv,
	    (struct sockaddr *)udp_in6, n, opts, NULL) == 0)
		udpstat.udps_fullsock++;
	else
		FUNC11(last->in6p_socket);
}