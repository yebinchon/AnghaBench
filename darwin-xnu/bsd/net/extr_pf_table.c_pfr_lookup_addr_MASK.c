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
union sockaddr_union {int /*<<< orphan*/  sin6; int /*<<< orphan*/  sin; } ;
struct radix_node_head {int dummy; } ;
struct pfr_ktable {struct radix_node_head* pfrkt_ip6; struct radix_node_head* pfrkt_ip4; } ;
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int /*<<< orphan*/  pfra_net; int /*<<< orphan*/  pfra_af; int /*<<< orphan*/  pfra_ip6addr; int /*<<< orphan*/  pfra_ip4addr; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pfr_addr*) ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pfr_kentry*) ; 
 scalar_t__ FUNC4 (struct pfr_kentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC6 (union sockaddr_union*,int) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC7 (union sockaddr_union*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (union sockaddr_union*,union sockaddr_union*,struct radix_node_head*) ; 
 scalar_t__ FUNC9 (union sockaddr_union*,struct radix_node_head*) ; 

__attribute__((used)) static struct pfr_kentry *
FUNC10(struct pfr_ktable *kt, struct pfr_addr *ad, int exact)
{
	union sockaddr_union	 sa, mask;
	struct radix_node_head	*head;
	struct pfr_kentry	*ke;

	FUNC5(pf_lock, LCK_MTX_ASSERT_OWNED);

	FUNC6(&sa, sizeof (sa));
	if (ad->pfra_af == AF_INET) {
		FUNC1(sa.sin, ad->pfra_ip4addr);
		head = kt->pfrkt_ip4;
	} else if (ad->pfra_af == AF_INET6) {
		FUNC2(sa.sin6, ad->pfra_ip6addr);
		head = kt->pfrkt_ip6;
	}
	else
		return NULL;
	if (FUNC0(ad)) {
		FUNC7(&mask, ad->pfra_af, ad->pfra_net);
		ke = (struct pfr_kentry *)FUNC8(&sa, &mask, head);
		if (ke && FUNC4(ke))
			ke = NULL;
	} else {
		ke = (struct pfr_kentry *)FUNC9(&sa, head);
		if (ke && FUNC4(ke))
			ke = NULL;
		if (exact && ke && FUNC3(ke))
			ke = NULL;
	}
	return (ke);
}