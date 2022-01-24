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
struct mbuf {int m_flags; int /*<<< orphan*/ * m_nextpkt; } ;
struct ifnet {int if_eflags; int if_flags; } ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENETDOWN ; 
 int /*<<< orphan*/  ENXIO ; 
 int IFEF_TXSTART ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  QP_MBUF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

errno_t
FUNC4(struct ifnet *ifp, struct mbuf *m, boolean_t flush,
    boolean_t *pdrop)
{
	if (ifp == NULL || m == NULL || !(m->m_flags & M_PKTHDR) ||
	    m->m_nextpkt != NULL) {
		if (m != NULL) {
			FUNC3(m);
			*pdrop = TRUE;
		}
		return (EINVAL);
	} else if (!(ifp->if_eflags & IFEF_TXSTART) ||
	    !FUNC0(ifp)) {
		/* flag tested without lock for performance */
		FUNC2(m);
		*pdrop = TRUE;
		return (ENXIO);
	} else if (!(ifp->if_flags & IFF_UP)) {
		FUNC2(m);
		*pdrop = TRUE;
		return (ENETDOWN);
	}

	return (FUNC1(ifp, m, QP_MBUF, flush, pdrop));
}