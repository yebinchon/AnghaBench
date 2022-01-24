#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct mptsub {struct socket* mpts_socket; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {int sin_len; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_addr; } ;
struct mptses {TYPE_2__ __mpte_dst_v6; TYPE_1__ mpte_dst_v4_nat64; } ;
struct ipv6_prefix {scalar_t__ prefix_len; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {struct ifnet* inp_last_outifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ ENOENT ; 
 int NAT64_MAX_NUM_PREFIXES ; 
 scalar_t__ FUNC0 (struct ifnet*,struct ipv6_prefix*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ipv6_prefix*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct socket*) ; 

__attribute__((used)) static void
FUNC4(struct mptses *mpte, const struct mptsub *mpts)
{
	struct ipv6_prefix nat64prefixes[NAT64_MAX_NUM_PREFIXES];
	struct socket *so = mpts->mpts_socket;
	struct ifnet *ifp;
	int j;

	ifp = FUNC3(so)->inp_last_outifp;

	if (FUNC0(ifp, nat64prefixes) == ENOENT) {
		FUNC1(ifp);
		return;
	}


	for (j = 0; j < NAT64_MAX_NUM_PREFIXES; j++) {
		int success;

		if (nat64prefixes[j].prefix_len == 0)
			continue;

		success = FUNC2(&mpte->__mpte_dst_v6.sin6_addr,
						       &nat64prefixes[j],
						       &mpte->mpte_dst_v4_nat64.sin_addr);
		if (success) {
			mpte->mpte_dst_v4_nat64.sin_len = sizeof(mpte->mpte_dst_v4_nat64);
			mpte->mpte_dst_v4_nat64.sin_family = AF_INET;
			mpte->mpte_dst_v4_nat64.sin_port = mpte->__mpte_dst_v6.sin6_port;
			break;
		}
	}
}