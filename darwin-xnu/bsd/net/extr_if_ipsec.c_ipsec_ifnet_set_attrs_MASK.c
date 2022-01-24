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
struct ifnet_stats_param {int dummy; } ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFEF_NOAUTOIPV6LL ; 
 int IFF_MULTICAST ; 
 int IFF_POINTOPOINT ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet_stats_param*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ifnet_stats_param*) ; 

__attribute__((used)) static errno_t
FUNC5(ifnet_t ifp)
{
	/* Set flags and additional information. */
	FUNC3(ifp, 1500);
	FUNC2(ifp, IFF_UP | IFF_MULTICAST | IFF_POINTOPOINT, 0xffff);

	/* The interface must generate its own IPv6 LinkLocal address,
	 * if possible following the recommendation of RFC2472 to the 64bit interface ID
	 */
	FUNC1(ifp, IFEF_NOAUTOIPV6LL, IFEF_NOAUTOIPV6LL);

#if !IPSEC_NEXUS
	/* Reset the stats in case as the interface may have been recycled */
	struct ifnet_stats_param stats;
	FUNC0(&stats, sizeof(struct ifnet_stats_param));
	FUNC4(ifp, &stats);
#endif // !IPSEC_NEXUS

	return (0);
}