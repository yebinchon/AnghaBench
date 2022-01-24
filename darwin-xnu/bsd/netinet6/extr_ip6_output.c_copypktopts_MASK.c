#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ip6_pktopts {TYPE_1__* ip6po_nexthop; int /*<<< orphan*/ * ip6po_pktinfo; int /*<<< orphan*/  ip6po_flags; int /*<<< orphan*/  ip6po_tclass; int /*<<< orphan*/  ip6po_hlim; } ;
struct TYPE_3__ {int sa_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  M_IP6OPT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_pktopts*,int) ; 
 int /*<<< orphan*/  ip6po_dest1 ; 
 int /*<<< orphan*/  ip6po_dest2 ; 
 int /*<<< orphan*/  ip6po_hbh ; 
 int /*<<< orphan*/  ip6po_rthdr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct ip6_pktopts *dst, struct ip6_pktopts *src, int canwait)
{
	if (dst == NULL || src == NULL)  {
		FUNC4("copypktopts: invalid argument\n");
		return (EINVAL);
	}

	dst->ip6po_hlim = src->ip6po_hlim;
	dst->ip6po_tclass = src->ip6po_tclass;
	dst->ip6po_flags = src->ip6po_flags;
	if (src->ip6po_pktinfo) {
		dst->ip6po_pktinfo = FUNC1(sizeof (*dst->ip6po_pktinfo),
		    M_IP6OPT, canwait);
		if (dst->ip6po_pktinfo == NULL && canwait == M_NOWAIT)
			goto bad;
		*dst->ip6po_pktinfo = *src->ip6po_pktinfo;
	}
	if (src->ip6po_nexthop) {
		dst->ip6po_nexthop = FUNC1(src->ip6po_nexthop->sa_len,
		    M_IP6OPT, canwait);
		if (dst->ip6po_nexthop == NULL && canwait == M_NOWAIT)
			goto bad;
		FUNC2(src->ip6po_nexthop, dst->ip6po_nexthop,
		    src->ip6po_nexthop->sa_len);
	}
	FUNC0(ip6po_hbh);
	FUNC0(ip6po_dest1);
	FUNC0(ip6po_dest2);
	FUNC0(ip6po_rthdr); /* not copy the cached route */
	return (0);

bad:
	FUNC3(dst, -1);
	return (ENOBUFS);
}