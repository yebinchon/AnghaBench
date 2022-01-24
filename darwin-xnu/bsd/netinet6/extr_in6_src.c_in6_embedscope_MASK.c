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
typedef  size_t u_int32_t ;
struct in6_addr {void** s6_addr16; } ;
struct sockaddr_in6 {size_t sin6_scope_id; struct in6_addr sin6_addr; } ;
struct ip6_pktopts {struct in6_pktinfo* ip6po_pktinfo; } ;
struct in6pcb {TYPE_1__* in6p_moptions; struct ip6_pktopts* in6p_outputopts; } ;
struct in6_pktinfo {size_t ipi6_ifindex; } ;
struct ifnet {size_t if_index; } ;
struct TYPE_3__ {struct ifnet* im6o_multicast_ifp; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct in6_addr*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 scalar_t__ FUNC4 (struct in6_addr*) ; 
 void* FUNC5 (size_t) ; 
 size_t if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 size_t FUNC9 (struct in6_addr*) ; 

int
FUNC10(struct in6_addr *in6, const struct sockaddr_in6 *sin6,
    struct in6pcb *in6p, struct ifnet **ifpp, struct ip6_pktopts *opt)
{
	struct ifnet *ifp = NULL;
	u_int32_t scopeid;
	struct ip6_pktopts *optp = NULL;

	*in6 = sin6->sin6_addr;
	scopeid = sin6->sin6_scope_id;
	if (ifpp != NULL)
		*ifpp = NULL;

	/*
	 * don't try to read sin6->sin6_addr beyond here, since the caller may
	 * ask us to overwrite existing sockaddr_in6
	 */

#ifdef ENABLE_DEFAULT_SCOPE
	if (scopeid == 0)
		scopeid = scope6_addr2default(in6);
#endif

	if (FUNC4(in6) || FUNC2(in6)) {
		struct in6_pktinfo *pi;
		struct ifnet *im6o_multicast_ifp = NULL;

		if (in6p != NULL && FUNC3(in6) &&
		    in6p->in6p_moptions != NULL) {
			FUNC0(in6p->in6p_moptions);
			im6o_multicast_ifp =
			    in6p->in6p_moptions->im6o_multicast_ifp;
			FUNC1(in6p->in6p_moptions);
		}

		if (opt != NULL)
			optp = opt;
		else if (in6p != NULL)
			optp = in6p->in6p_outputopts;
		/*
		 * KAME assumption: link id == interface id
		 */
		if (in6p != NULL && optp != NULL &&
		    (pi = optp->ip6po_pktinfo) != NULL &&
		    pi->ipi6_ifindex != 0) {
			/* ifp is needed here if only we're returning it */
			if (ifpp != NULL) {
				FUNC7();
				ifp = ifindex2ifnet[pi->ipi6_ifindex];
				FUNC6();
			}
			in6->s6_addr16[1] = FUNC5(pi->ipi6_ifindex);
		} else if (in6p != NULL && FUNC3(in6) &&
		    in6p->in6p_moptions != NULL && im6o_multicast_ifp != NULL) {
			ifp = im6o_multicast_ifp;
			in6->s6_addr16[1] = FUNC5(ifp->if_index);
		} else if (scopeid != 0) {
			/*
			 * Since scopeid is unsigned, we only have to check it
			 * against if_index (ifnet_head_lock not needed since
			 * if_index is an ever-increasing integer.)
			 */
			if (if_index < scopeid)
				return (ENXIO);  /* XXX EINVAL? */

			/* ifp is needed here only if we're returning it */
			if (ifpp != NULL) {
				FUNC7();
				ifp = ifindex2ifnet[scopeid];
				FUNC6();
			}
			/* XXX assignment to 16bit from 32bit variable */
			in6->s6_addr16[1] = FUNC5(scopeid & 0xffff);
		}

		if (ifpp != NULL) {
			if (ifp != NULL)
				FUNC8(ifp);	/* for caller */
			*ifpp = ifp;
		}
	}

	return (0);
}