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
struct sockaddr_in {int sin_len; int sdl_len; scalar_t__ sdl_alen; int /*<<< orphan*/  sdl_type; int /*<<< orphan*/  sdl_family; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr_dl {int sin_len; int sdl_len; scalar_t__ sdl_alen; int /*<<< orphan*/  sdl_type; int /*<<< orphan*/  sdl_family; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct mbuf {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ether_arp {int arp_pln; scalar_t__ arp_hln; int /*<<< orphan*/  arp_op; int /*<<< orphan*/  arp_sha; int /*<<< orphan*/  arp_tpa; int /*<<< orphan*/  arp_spa; int /*<<< orphan*/  arp_pro; int /*<<< orphan*/  arp_hrd; } ;
typedef  int /*<<< orphan*/  sender_ip ;
typedef  int /*<<< orphan*/  sender_hw ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_LINK ; 
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ETHERTYPE_IP ; 
 scalar_t__ ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,scalar_t__,struct sockaddr_in*,struct sockaddr_in*,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  etherbroadcastaddr ; 
 struct ether_arp* FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int FUNC9 (struct mbuf*) ; 
 scalar_t__ FUNC10 (struct mbuf**,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct ifnet *ifp, struct mbuf *m)
{
	struct ether_arp *ea;
	struct sockaddr_dl	sender_hw;
	struct sockaddr_in	sender_ip;
	struct sockaddr_in	target_ip;

	if (FUNC9(m) < sizeof (*ea) && FUNC10(&m, sizeof (*ea)) != 0)
		return;

	ea = FUNC7(m);

	/* Verify this is an ethernet/ip arp and address lengths are correct */
	if (FUNC11(ea->arp_hrd) != ARPHRD_ETHER ||
	    FUNC11(ea->arp_pro) != ETHERTYPE_IP ||
	    ea->arp_pln != sizeof (struct in_addr) ||
	    ea->arp_hln != ETHER_ADDR_LEN) {
		FUNC8(m);
		return;
	}

	/* Verify the sender is not broadcast */
	if (FUNC4(ea->arp_sha, etherbroadcastaddr, ETHER_ADDR_LEN) == 0) {
		FUNC8(m);
		return;
	}

	FUNC6(&sender_ip, sizeof (sender_ip));
	sender_ip.sin_len = sizeof (sender_ip);
	sender_ip.sin_family = AF_INET;
	FUNC1(&sender_ip.sin_addr, ea->arp_spa);
	target_ip = sender_ip;
	FUNC1(&target_ip.sin_addr, ea->arp_tpa);

	FUNC6(&sender_hw, sizeof (sender_hw));
	sender_hw.sdl_len = sizeof (sender_hw);
	sender_hw.sdl_family = AF_LINK;
	sender_hw.sdl_type = IFT_ETHER;
	sender_hw.sdl_alen = ETHER_ADDR_LEN;
	FUNC5(ea->arp_sha, FUNC0(&sender_hw), ETHER_ADDR_LEN);

	/* update L2 reachability record, if present */
	FUNC3(ifp, FUNC0(&sender_hw), ETHER_ADDR_LEN);

	FUNC2(ifp, FUNC11(ea->arp_op), &sender_hw, &sender_ip,
	    &target_ip);
	FUNC8(m);
}