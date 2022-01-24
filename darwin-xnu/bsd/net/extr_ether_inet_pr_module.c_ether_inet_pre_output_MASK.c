#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr_dl {int dummy; } ;
struct sockaddr {int sa_family; int /*<<< orphan*/  sa_data; } ;
struct mbuf {int /*<<< orphan*/  m_flags; } ;
struct ether_header {int /*<<< orphan*/  ether_type; int /*<<< orphan*/  ether_dhost; } ;
typedef  int /*<<< orphan*/  route_t ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  struct mbuf* mbuf_t ;
typedef  int /*<<< orphan*/  ll_dest ;
typedef  TYPE_1__* ifnet_t ;
typedef  int /*<<< orphan*/  ethertype_ip ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_5__ {int if_flags; } ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_UNSPEC 129 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  ENETDOWN ; 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int ETHER_ADDR_LEN ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  M_LOOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sockaddr_in const*,struct sockaddr_dl*,int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
#define  pseudo_AF_HDRCMPLT 128 

__attribute__((used)) static errno_t
FUNC7(ifnet_t ifp, protocol_family_t protocol_family,
    mbuf_t *m0, const struct sockaddr *dst_netaddr,
    void *route, char *type, char *edst)
{
#pragma unused(protocol_family)
	struct mbuf *m = *m0;
	const struct ether_header *eh;
	errno_t result = 0;

	if ((ifp->if_flags & (IFF_UP|IFF_RUNNING)) != (IFF_UP|IFF_RUNNING))
		return (ENETDOWN);

	/*
	 * Tell ether_frameout it's ok to loop packet unless negated below.
	 */
	m->m_flags |= M_LOOP;

	switch (dst_netaddr->sa_family) {
	case AF_INET: {
		struct sockaddr_dl ll_dest;

		result = FUNC1(ifp,
		    (const struct sockaddr_in *)(uintptr_t)(size_t)dst_netaddr,
		    &ll_dest, sizeof (ll_dest), (route_t)route, *m0);
		if (result == 0) {
			u_int16_t ethertype_ip = FUNC3(ETHERTYPE_IP);

			FUNC2(FUNC0(&ll_dest), edst, ETHER_ADDR_LEN);
			FUNC2(&ethertype_ip, type, sizeof (ethertype_ip));
		}
		break;
	}

	case pseudo_AF_HDRCMPLT:
	case AF_UNSPEC:
		m->m_flags &= ~M_LOOP;
		eh = (const struct ether_header *)(uintptr_t)(size_t)
		    dst_netaddr->sa_data;
		(void) FUNC5(edst, eh->ether_dhost, 6);
		FUNC2(&eh->ether_type, type, sizeof (u_short));
		break;

	default:
		FUNC6("%s: can't handle af%d\n", FUNC4(ifp),
		    dst_netaddr->sa_family);

		result = EAFNOSUPPORT;
		break;
	}

	return (result);
}