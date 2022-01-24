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
struct ether_header {int dummy; } ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  TYPE_1__* if_fake_ref ;
struct TYPE_3__ {int iff_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERMTU ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFF_BROADCAST ; 
 int IFF_FLAGS_HWCSUM ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFNET_CSUM_IP ; 
 int IFNET_CSUM_TCP ; 
 int IFNET_CSUM_TCPIPV6 ; 
 int IFNET_CSUM_UDP ; 
 int IFNET_CSUM_UDPIPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(if_fake_ref fakeif, ifnet_t ifp)
{
	(void)FUNC2(ifp, 0, -1);
	FUNC0(ifp, ETHER_ADDR_LEN);
	FUNC1(ifp, 0);
	FUNC5(ifp, ETHERMTU);
	FUNC3(ifp,
			IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX,
			0xffff);
	FUNC4(ifp, sizeof(struct ether_header));
	if ((fakeif->iff_flags & IFF_FLAGS_HWCSUM) != 0) {
		FUNC6(ifp,
		    IFNET_CSUM_IP | IFNET_CSUM_TCP | IFNET_CSUM_UDP |
		    IFNET_CSUM_TCPIPV6 | IFNET_CSUM_UDPIPV6);
	} else {
		FUNC6(ifp, 0);
	}
}