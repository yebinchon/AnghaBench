#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int rt_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct route_in6 {struct rtentry* ro_rt; TYPE_1__ ro_dst; } ;
struct route {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pkt_flags; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ip6_hdr {scalar_t__ ip6_hlim; scalar_t__ ip6_nxt; int /*<<< orphan*/  ip6_dst; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ IPV6_MAXHLIM ; 
 int /*<<< orphan*/  PKTF_PROXY_DST ; 
 int /*<<< orphan*/  FUNC4 (struct route_in6*) ; 
 scalar_t__ FUNC5 (struct route_in6*) ; 
 int /*<<< orphan*/  RTF_PRCLONING ; 
 int RTF_PROXY ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct route*,int /*<<< orphan*/ ,unsigned int) ; 

boolean_t
FUNC10(struct mbuf *m, struct ip6_hdr *ip6, struct route_in6 *ro6,
    unsigned int ifscope)
{
	struct rtentry *rt;
	boolean_t ours = FALSE;

	if (ip6->ip6_hlim != IPV6_MAXHLIM || ip6->ip6_nxt != IPPROTO_ICMPV6)
		goto done;

	if (FUNC2(&ip6->ip6_dst) ||
	    FUNC1(&ip6->ip6_dst)) {
		FUNC8(ro6 == NULL);
		ours = TRUE;
		goto done;
	} else if (FUNC3(&ip6->ip6_dst)) {
		goto done;
	}

	if (ro6 == NULL)
		goto done;

	if ((rt = ro6->ro_rt) != NULL)
		FUNC6(rt);

	if (FUNC5(ro6)) {
		if (rt != NULL)
			FUNC7(rt);

		FUNC4(ro6);

		/* Caller must have ensured this condition (not srcrt) */
		FUNC8(FUNC0(&ip6->ip6_dst,
		    &ro6->ro_dst.sin6_addr));

		FUNC9((struct route *)ro6, RTF_PRCLONING, ifscope);
		if ((rt = ro6->ro_rt) == NULL)
			goto done;

		FUNC6(rt);
	}

	ours = (rt->rt_flags & RTF_PROXY) ? TRUE : FALSE;
	FUNC7(rt);

done:
	if (ours)
		m->m_pkthdr.pkt_flags |= PKTF_PROXY_DST;

	return (ours);
}