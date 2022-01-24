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
struct ip6_pktopts {int dummy; } ;
struct cmsghdr {int cmsg_len; scalar_t__ cmsg_level; int /*<<< orphan*/  cmsg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ IPPROTO_IPV6 ; 
 struct cmsghdr* FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct cmsghdr* FUNC3 (struct mbuf*,struct cmsghdr*) ; 
 int FUNC4 (struct ip6_pktopts*,struct ip6_pktopts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6_pktopts*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ip6_pktopts*,int /*<<< orphan*/ ,int,int) ; 

int
FUNC7(struct mbuf *control, struct ip6_pktopts *opt,
    struct ip6_pktopts *stickyopt, int uproto)
{
	struct cmsghdr *cm = NULL;

	if (control == NULL || opt == NULL)
		return (EINVAL);

	FUNC5(opt);
	if (stickyopt) {
		int error;

		/*
		 * If stickyopt is provided, make a local copy of the options
		 * for this particular packet, then override them by ancillary
		 * objects.
		 * XXX: copypktopts() does not copy the cached route to a next
		 * hop (if any).  This is not very good in terms of efficiency,
		 * but we can allow this since this option should be rarely
		 * used.
		 */
		if ((error = FUNC4(opt, stickyopt, M_NOWAIT)) != 0)
			return (error);
	}

	/*
	 * XXX: Currently, we assume all the optional information is stored
	 * in a single mbuf.
	 */
	if (control->m_next)
		return (EINVAL);

	if (control->m_len < FUNC1(0))
		return (EINVAL);

	for (cm = FUNC2(control); cm != NULL;
	    cm = FUNC3(control, cm)) {
		int error;

		if (cm->cmsg_len < sizeof (struct cmsghdr) ||
		    cm->cmsg_len > control->m_len)
			return (EINVAL);
		if (cm->cmsg_level != IPPROTO_IPV6)
			continue;

		error = FUNC6(cm->cmsg_type, FUNC0(cm),
		    cm->cmsg_len - FUNC1(0), opt, 0, 1, uproto);
		if (error)
			return (error);
	}

	return (0);
}