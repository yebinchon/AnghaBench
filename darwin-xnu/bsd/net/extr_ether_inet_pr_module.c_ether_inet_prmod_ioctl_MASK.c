#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_12__ {int /*<<< orphan*/  sa_data; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
struct ifaddr {int dummy; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  TYPE_2__* ifnet_t ;
typedef  int errno_t ;
struct TYPE_13__ {int /*<<< orphan*/  if_unit; int /*<<< orphan*/  if_softc; } ;
struct TYPE_11__ {int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 TYPE_10__* FUNC0 (struct ifaddr*) ; 
 int IFF_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
#define  SIOCAIFADDR 130 
#define  SIOCGIFADDR 129 
#define  SIOCSIFADDR 128 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ether_addr*) ; 

__attribute__((used)) static errno_t
FUNC10(ifnet_t ifp, protocol_family_t protocol_family,
    u_long command, void *data)
{
#pragma unused(protocol_family)
	int error = 0;

	switch (command) {
	case SIOCSIFADDR:		/* struct ifaddr pointer */
	case SIOCAIFADDR: {		/* struct ifaddr pointer */
		/*
		 * Note: caller of ifnet_ioctl() passes in pointer to
		 * struct ifaddr as parameter to SIOC{A,S}IFADDR, for
		 * legacy reasons.
		 */
		struct ifaddr *ifa = data;

		if (!(FUNC3(ifp) & IFF_RUNNING)) {
			FUNC6(ifp, IFF_UP, IFF_UP);
			FUNC5(ifp, 0, SIOCSIFFLAGS, NULL);
		}

		if (FUNC2(ifa) != AF_INET)
			break;

		FUNC7(ifp, ifa);

		if (command != SIOCSIFADDR)
			break;

		/*
		 * Register new IP and MAC addresses with the kernel
		 * debugger if the interface is the same as was registered
		 * by IOKernelDebugger. If no interface was registered,
		 * fall back and just match against en0 interface.
		 * Do this only for the first address of the interface
		 * and not for aliases.
		 */
		if ((FUNC8() != 0 &&
		    FUNC8() == ifp->if_softc) ||
		    (FUNC8() == 0 && ifp->if_unit == 0))
			FUNC9(&(FUNC0(ifa)->sin_addr),
			    (struct ether_addr *)FUNC1(ifp));
		break;
	}

	case SIOCGIFADDR: {		/* struct ifreq */
		struct ifreq *ifr = data;
		FUNC4(ifp, ifr->ifr_addr.sa_data,
		    ETHER_ADDR_LEN);
		break;
	}

	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}