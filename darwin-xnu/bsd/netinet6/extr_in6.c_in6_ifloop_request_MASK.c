#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {TYPE_1__ ia_addr; } ;
struct ifaddr {int /*<<< orphan*/  ifa_addr; } ;
typedef  int /*<<< orphan*/  all1_sa ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int RTF_HOST ; 
 int RTF_LLINFO ; 
 int RTF_UP ; 
 int RTM_ADD ; 
 int RTM_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  in6mask128 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC8 (int,struct ifaddr*,int,struct rtentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int,struct rtentry**) ; 
 int /*<<< orphan*/  FUNC11 (struct rtentry*,struct ifaddr*) ; 

__attribute__((used)) static void
FUNC12(int cmd, struct ifaddr *ifa)
{
	struct sockaddr_in6 all1_sa;
	struct rtentry *nrt = NULL;
	int e;

	FUNC3(&all1_sa, sizeof (all1_sa));
	all1_sa.sin6_family = AF_INET6;
	all1_sa.sin6_len = sizeof (struct sockaddr_in6);
	all1_sa.sin6_addr = in6mask128;

	/*
	 * We specify the address itself as the gateway, and set the
	 * RTF_LLINFO flag, so that the corresponding host route would have
	 * the flag, and thus applications that assume traditional behavior
	 * would be happy.  Note that we assume the caller of the function
	 * (probably implicitly) set nd6_rtrequest() to ifa->ifa_rtrequest,
	 * which changes the outgoing interface to the loopback interface.
	 * ifa_addr for INET6 is set once during init; no need to hold lock.
	 */
	FUNC5(rnh_lock);
	e = FUNC10(cmd, ifa->ifa_addr, ifa->ifa_addr,
	    (struct sockaddr *)&all1_sa, RTF_UP|RTF_HOST|RTF_LLINFO, &nrt);
	if (e != 0) {
		FUNC7(LOG_ERR, "in6_ifloop_request: "
		    "%s operation failed for %s (errno=%d)\n",
		    cmd == RTM_ADD ? "ADD" : "DELETE",
		    FUNC4(&((struct in6_ifaddr *)ifa)->ia_addr.sin6_addr),
		    e);
	}

	if (nrt != NULL)
		FUNC0(nrt);
	/*
	 * Make sure rt_ifa be equal to IFA, the second argument of the
	 * function.
	 * We need this because when we refer to rt_ifa->ia6_flags in
	 * ip6_input, we assume that the rt_ifa points to the address instead
	 * of the loopback address.
	 */
	if (cmd == RTM_ADD && nrt && ifa != nrt->rt_ifa) {
		FUNC11(nrt, ifa);
	}

	/*
	 * Report the addition/removal of the address to the routing socket.
	 * XXX: since we called rtinit for a p2p interface with a destination,
	 *   we end up reporting twice in such a case.  Should we rather
	 *   omit the second report?
	 */
	if (nrt != NULL) {
		FUNC8(cmd, ifa, e, nrt);
		if (cmd == RTM_DELETE) {
			FUNC2(nrt);
			FUNC9(nrt);
		} else {
			/* the cmd must be RTM_ADD here */
			FUNC1(nrt);
			FUNC2(nrt);
		}
	}
	FUNC6(rnh_lock);
}