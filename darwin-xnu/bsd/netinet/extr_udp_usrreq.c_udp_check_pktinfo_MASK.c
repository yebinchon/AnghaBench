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
struct mbuf {int m_len; scalar_t__ m_next; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in_pktinfo {int ipi_ifindex; struct in_addr ipi_spec_dst; } ;
struct ifnet {int dummy; } ;
struct cmsghdr {int cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ IPPROTO_IP ; 
 scalar_t__ IP_PKTINFO ; 
 struct cmsghdr* FUNC2 (struct mbuf*) ; 
 struct cmsghdr* FUNC3 (struct mbuf*,struct cmsghdr*) ; 
 int if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC7(struct mbuf *control, struct ifnet **outif,
    struct in_addr *laddr)
{
	struct cmsghdr *cm = 0;
	struct in_pktinfo *pktinfo;
	struct ifnet *ifp;

	if (outif != NULL)
		*outif = NULL;

	/*
	 * XXX: Currently, we assume all the optional information is stored
	 * in a single mbuf.
	 */
	if (control->m_next)
		return (EINVAL);

	if (control->m_len < FUNC1(0))
		return (EINVAL);

	for (cm = FUNC2(control); cm;
	    cm = FUNC3(control, cm)) {
		if (cm->cmsg_len < sizeof (struct cmsghdr) ||
		    cm->cmsg_len > control->m_len)
			return (EINVAL);

		if (cm->cmsg_level != IPPROTO_IP || cm->cmsg_type != IP_PKTINFO)
			continue;

		if (cm->cmsg_len != FUNC1(sizeof (struct in_pktinfo)))
			return (EINVAL);

		pktinfo =  (struct in_pktinfo *)(void *)FUNC0(cm);

		/* Check for a valid ifindex in pktinfo */
		FUNC5();

		if (pktinfo->ipi_ifindex > if_index) {
			FUNC4();
			return (ENXIO);
		}

		/*
		 * If ipi_ifindex is specified it takes precedence
		 * over ipi_spec_dst.
		 */
		if (pktinfo->ipi_ifindex) {
			ifp = ifindex2ifnet[pktinfo->ipi_ifindex];
			if (ifp == NULL) {
				FUNC4();
				return (ENXIO);
			}
			if (outif != NULL) {
				FUNC6(ifp);
				*outif = ifp;
			}
			FUNC4();
			laddr->s_addr = INADDR_ANY;
			break;
		}

		FUNC4();

		/*
		 * Use the provided ipi_spec_dst address for temp
		 * source address.
		 */
		*laddr = pktinfo->ipi_spec_dst;
		break;
	}
	return (0);
}