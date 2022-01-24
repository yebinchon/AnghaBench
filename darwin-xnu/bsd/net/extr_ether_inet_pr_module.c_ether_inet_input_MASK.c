#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int dummy; } ;
struct ether_header {scalar_t__ ether_type; int /*<<< orphan*/  ether_shost; } ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  TYPE_1__* mbuf_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_9__ {struct TYPE_9__* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EJUSTRETURN ; 
 int /*<<< orphan*/  ETHERTYPE_ARP ; 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,TYPE_1__*) ; 
 int /*<<< orphan*/  etherbroadcastaddr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct ether_header* FUNC6 (TYPE_1__*) ; 
 struct ifnet* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static errno_t
FUNC9(ifnet_t ifp, protocol_family_t	protocol_family,
    mbuf_t m_list)
{
#pragma unused(ifp, protocol_family)
	mbuf_t	m;
	mbuf_t	*tailptr = &m_list;
	mbuf_t	nextpkt;

	/* Strip ARP and non-IP packets out of the list */
	for (m = m_list; m; m = nextpkt) {
		struct ether_header *eh = FUNC6(m);
		struct ifnet *mifp;

		/*
		 * Trust the ifp in the mbuf, rather than ifproto's
		 * since the packet could have been injected via
		 * a dlil_input_packet_list() using an ifp that is
		 * different than the one where the packet really
		 * came from.
		 */
		mifp = FUNC7(m);

		nextpkt = m->m_nextpkt;

		if (eh->ether_type == FUNC3(ETHERTYPE_IP)) {
			/*
			 * Update L2 reachability record, if present
			 * (and if not a broadcast sender).
			 */
			if (FUNC1(eh->ether_shost, etherbroadcastaddr,
			    ETHER_ADDR_LEN) != 0) {
				FUNC0(mifp, eh->ether_shost,
				    ETHER_ADDR_LEN);
			}
			/* put this packet in the list */
			*tailptr = m;
			tailptr = &m->m_nextpkt;
		} else {
			/* Pass ARP packets to arp input */
			m->m_nextpkt = NULL;
			if (eh->ether_type == FUNC3(ETHERTYPE_ARP))
				FUNC2(mifp, m);
			else
				FUNC4(m);
		}
	}

	*tailptr = NULL;

	/* Pass IP list to ip input */
	if (m_list != NULL && FUNC8(PF_INET, m_list) != 0) {
		FUNC5(m_list);
	}

	return (EJUSTRETURN);
}