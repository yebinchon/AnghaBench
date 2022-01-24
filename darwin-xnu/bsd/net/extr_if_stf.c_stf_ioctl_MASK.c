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
typedef  int u_long ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa_family; } ;
struct ifreq {TYPE_2__ ifr_addr; } ;
struct ifaddr {int /*<<< orphan*/  ifa_rtrequest; TYPE_1__* ifa_addr; } ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int errno_t ;
struct TYPE_3__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
#define  SIOCADDMULTI 130 
#define  SIOCDELMULTI 129 
#define  SIOCSIFADDR 128 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stf_rtrequest ; 

__attribute__((used)) static errno_t
FUNC6(
	ifnet_t		ifp,
	u_long		cmd,
	void		*data)
{
	struct ifaddr *ifa;
	struct ifreq *ifr;
	struct sockaddr_in6 *sin6;
	int error;

	error = 0;
	switch (cmd) {
	case SIOCSIFADDR:
		ifa = (struct ifaddr *)data;
		if (ifa == NULL) {
			error = EAFNOSUPPORT;
			break;
		}
		FUNC0(ifa);
		if (ifa->ifa_addr->sa_family != AF_INET6) {
			FUNC2(ifa);
			error = EAFNOSUPPORT;
			break;
		}
		sin6 = (struct sockaddr_in6 *)(void *)ifa->ifa_addr;
		if (FUNC3(&sin6->sin6_addr)) {
                        if ( !(FUNC4( ifp ) & IFF_UP) ) {
                                /* do this only if the interface is not already up */
				ifa->ifa_rtrequest = stf_rtrequest;
				FUNC2(ifa);
				FUNC5(ifp, IFF_UP, IFF_UP);
			} else {
				FUNC2(ifa);
			}
		} else {
			FUNC2(ifa);
			error = EINVAL;
		}
		FUNC1(ifa);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		ifr = (struct ifreq *)data;
		if (ifr && ifr->ifr_addr.sa_family == AF_INET6)
			;
		else
			error = EAFNOSUPPORT;
		break;

	default:
		error = EOPNOTSUPP;
		break;
	}

	return error;
}