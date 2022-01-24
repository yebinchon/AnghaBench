#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {unsigned int ip6oa_boundif; int ip6oa_flags; int sin6_len; struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  ip6oa_netsvctype; int /*<<< orphan*/  ip6oa_sotc; } ;
struct sockaddr {int dummy; } ;
struct route_in6 {int dummy; } ;
struct ip6_pktopts {scalar_t__ ip6po_prefer_tempaddr; struct in6_pktinfo* ip6po_pktinfo; } ;
struct ip6_out_args {unsigned int ip6oa_boundif; int ip6oa_flags; int sin6_len; struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  ip6oa_netsvctype; int /*<<< orphan*/  ip6oa_sotc; } ;
struct ip6_moptions {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; struct ip6_moptions* in6p_moptions; } ;
struct in6_pktinfo {struct in6_addr ipi6_addr; } ;
struct TYPE_6__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int ia6_flags; TYPE_2__ ia_ifa; int /*<<< orphan*/  ia_addr; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  srcsock ;
typedef  int /*<<< orphan*/  ip6oa ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {struct in6_addr sin6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EADDRNOTAVAIL ; 
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned int IFSCOPE_NONE ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_CLAT46 ; 
 int IN6_IFF_NOTREADY ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*) ; 
 scalar_t__ FUNC4 (struct inpcb*) ; 
 scalar_t__ FUNC5 (struct inpcb*) ; 
 scalar_t__ FUNC6 (struct inpcb*) ; 
 scalar_t__ FUNC7 (struct inpcb*) ; 
 int IP6OAF_AWDL_UNRESTRICTED ; 
 int IP6OAF_BOUND_IF ; 
 int IP6OAF_INTCOPROC_ALLOWED ; 
 int IP6OAF_NO_CELLULAR ; 
 int IP6OAF_NO_EXPENSIVE ; 
 int IP6OAF_SELECT_SRCIF ; 
 scalar_t__ IP6PO_TEMPADDR_NOTPREFER ; 
 scalar_t__ IP6PO_TEMPADDR_SYSTEM ; 
 int /*<<< orphan*/  IPV6_SRCSEL_HINT_PREFER_TMPADDR ; 
 int /*<<< orphan*/  FUNC8 (struct inpcb*) ; 
 int /*<<< orphan*/  SO_TC_UNSPEC ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _NET_SERVICE_TYPE_UNSPEC ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in6*,int) ; 
 scalar_t__ FUNC11 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int FUNC13 (struct sockaddr_in6*,struct ip6_pktopts*,struct ip6_moptions*,struct route_in6*,struct sockaddr_in6*,struct ifnet**) ; 
 int /*<<< orphan*/ * FUNC14 (struct sockaddr_in6*,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ,struct in6_addr*,struct ifnet**,int*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct in6_addr*,struct ifnet*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct inpcb*,struct ifnet*) ; 
 int ip6_prefer_tempaddr ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *) ; 

struct in6_addr *
FUNC18(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct inpcb *inp, struct route_in6 *ro,
    struct ifnet **ifpp, struct in6_addr *src_storage, unsigned int ifscope,
    int *errorp)
{
	struct ifnet *ifp = NULL;
	struct in6_pktinfo *pi = NULL;
	struct ip6_moptions *mopts;
	struct ip6_out_args ip6oa;
	boolean_t inp_debug = FALSE;
	uint32_t hint_mask = 0;
	int prefer_tempaddr = 0;
	struct ifnet *sifp = NULL;

	FUNC10(&ip6oa, sizeof(ip6oa));
	ip6oa.ip6oa_boundif = ifscope;
	ip6oa.ip6oa_flags = IP6OAF_SELECT_SRCIF;
	ip6oa.ip6oa_sotc = SO_TC_UNSPEC;
	ip6oa.ip6oa_netsvctype = _NET_SERVICE_TYPE_UNSPEC;

	*errorp = 0;
	if (ifpp != NULL)
		*ifpp = NULL;

	if (inp != NULL) {
		inp_debug = FUNC8(inp);
		mopts = inp->in6p_moptions;
		if (FUNC6(inp))
			ip6oa.ip6oa_flags |= IP6OAF_NO_CELLULAR;
		if (FUNC7(inp))
			ip6oa.ip6oa_flags |= IP6OAF_NO_EXPENSIVE;
		if (FUNC4(inp))
			ip6oa.ip6oa_flags |= IP6OAF_AWDL_UNRESTRICTED;
		if (FUNC5(inp))
			ip6oa.ip6oa_flags |= IP6OAF_INTCOPROC_ALLOWED;
	} else {
		mopts = NULL;
		/* Allow the kernel to retransmit packets. */
		ip6oa.ip6oa_flags |= IP6OAF_INTCOPROC_ALLOWED |
		    IP6OAF_AWDL_UNRESTRICTED;
	}

	if (ip6oa.ip6oa_boundif != IFSCOPE_NONE)
		ip6oa.ip6oa_flags |= IP6OAF_BOUND_IF;

	/*
	 * If the source address is explicitly specified by the caller,
	 * check if the requested source address is indeed a unicast address
	 * assigned to the node, and can be used as the packet's source
	 * address.  If everything is okay, use the address as source.
	 */
	if (opts && (pi = opts->ip6po_pktinfo) &&
	    !FUNC3(&pi->ipi6_addr)) {
		struct sockaddr_in6 srcsock;
		struct in6_ifaddr *ia6;

		/* get the outgoing interface */
		if ((*errorp = FUNC13(dstsock, opts, mopts, ro, &ip6oa,
		    &ifp)) != 0) {
			src_storage = NULL;
			goto done;
		}

		/*
		 * determine the appropriate zone id of the source based on
		 * the zone of the destination and the outgoing interface.
		 * If the specified address is ambiguous wrt the scope zone,
		 * the interface must be specified; otherwise, ifa_ifwithaddr()
		 * will fail matching the address.
		 */
		FUNC10(&srcsock, sizeof (srcsock));
		srcsock.sin6_family = AF_INET6;
		srcsock.sin6_len = sizeof (srcsock);
		srcsock.sin6_addr = pi->ipi6_addr;
		if (ifp != NULL) {
			*errorp = FUNC15(&srcsock.sin6_addr, ifp, NULL);
			if (*errorp != 0) {
				src_storage = NULL;
				goto done;
			}
		}
		ia6 = (struct in6_ifaddr *)FUNC11((struct sockaddr *)
		    (&srcsock));
		if (ia6 == NULL) {
			*errorp = EADDRNOTAVAIL;
			src_storage = NULL;
			goto done;
		}
		FUNC0(&ia6->ia_ifa);
		if ((ia6->ia6_flags & (IN6_IFF_ANYCAST | IN6_IFF_NOTREADY | IN6_IFF_CLAT46)) ||
		    (inp && FUNC16(inp, ia6->ia_ifa.ifa_ifp))) {
			FUNC2(&ia6->ia_ifa);
			FUNC1(&ia6->ia_ifa);
			*errorp = EHOSTUNREACH;
			src_storage = NULL;
			goto done;
		}

		*src_storage = FUNC17(&ia6->ia_addr)->sin6_addr;
		FUNC2(&ia6->ia_ifa);
		FUNC1(&ia6->ia_ifa);
		goto done;
	}

	/*
	 * Otherwise, if the socket has already bound the source, just use it.
	 */
	if (inp != NULL && !FUNC3(&inp->in6p_laddr)) {
		src_storage = &inp->in6p_laddr;
		goto done;
	}

	/*
	 * If the address is not specified, choose the best one based on
	 * the outgoing interface and the destination address.
	 */
	/* get the outgoing interface */
	if ((*errorp = FUNC13(dstsock, opts, mopts, ro, &ip6oa,
	    &ifp)) != 0) {
		src_storage = NULL;
		goto done;
	}

	FUNC9(ifp != NULL);

	if (opts == NULL ||
	    opts->ip6po_prefer_tempaddr == IP6PO_TEMPADDR_SYSTEM) {
		prefer_tempaddr = ip6_prefer_tempaddr;
	} else if (opts->ip6po_prefer_tempaddr == IP6PO_TEMPADDR_NOTPREFER) {
		prefer_tempaddr = 0;
	} else
		prefer_tempaddr = 1;

	if (prefer_tempaddr)
		hint_mask |= IPV6_SRCSEL_HINT_PREFER_TMPADDR;

	if (FUNC14(dstsock, hint_mask, ifp, inp_debug, src_storage,
	    &sifp, errorp, NULL) == NULL) {
		src_storage = NULL;
		goto done;
	}

	FUNC9(sifp != NULL);

	if (inp && FUNC16(inp, sifp)) {
		src_storage = NULL;
		*errorp = EHOSTUNREACH;
		FUNC12(sifp);
		goto done;
	} else {
		FUNC12(sifp);
	}

done:
	if (ifpp != NULL) {
		/* if ifp is non-NULL, refcnt held in in6_selectif() */
		*ifpp = ifp;
	} else if (ifp != NULL) {
		FUNC12(ifp);
	}
	return (src_storage);
}