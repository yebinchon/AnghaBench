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
struct sockaddr_in6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ifaddr {int ifa_debug; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int IFD_DETACHING ; 
 int /*<<< orphan*/  IPV6_SRCSEL_HINT_PREFER_TMPADDR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 struct in6_addr* FUNC6 (struct sockaddr_in6*,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ,struct in6_addr*,struct ifnet**,int*,struct ifaddr**) ; 
 scalar_t__ ip6_prefer_tempaddr ; 

struct ifaddr *
FUNC7(struct sockaddr_in6 *addr, struct ifnet *ifp, int srcsel_debug) {
	int err = 0;
	struct ifnet *src_ifp = NULL;
	struct in6_addr src_storage = {};
	struct in6_addr *in6 = NULL;
	struct ifaddr *ifa = NULL;

	if((in6 = FUNC6(addr,
	    (ip6_prefer_tempaddr ? IPV6_SRCSEL_HINT_PREFER_TMPADDR : 0),
	    ifp, 0, &src_storage, &src_ifp, &err, &ifa)) == NULL) {
		if (err == 0)
			err = EADDRNOTAVAIL;
		FUNC2(src_ifp == NULL);
		if (ifa != NULL) {
			FUNC0(ifa);
			ifa = NULL;
		}
		goto done;
	}

	if (src_ifp != ifp) {
		if (err == 0)
			err = ENETUNREACH;
		if (ifa != NULL) {
			FUNC0(ifa);
			ifa = NULL;
		}
		goto done;
	}

	FUNC2(ifa != NULL);
	FUNC4(ifp);
	if ((ifa->ifa_debug & IFD_DETACHING) != 0) {
		err = EHOSTUNREACH;
		FUNC3(ifp);
		if (ifa != NULL) {
			FUNC0(ifa);
			ifa = NULL;
		}
		goto done;
	}
	FUNC3(ifp);

done:
	FUNC1("Returned with error: %d", err);
	if (src_ifp != NULL)
		FUNC5(src_ifp);
	return (ifa);
}