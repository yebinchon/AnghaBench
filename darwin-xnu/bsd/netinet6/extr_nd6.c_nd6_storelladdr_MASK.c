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
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct sockaddr {int dummy; } ;
struct rtentry {TYPE_2__* rt_gateway; } ;
struct mbuf {int m_flags; } ;
struct ifnet {int if_type; int if_addrlen; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  IFT_ARCNET 135 
#define  IFT_BRIDGE 134 
#define  IFT_ETHER 133 
#define  IFT_FDDI 132 
#define  IFT_IEEE1394 131 
#define  IFT_IEEE80211 130 
#define  IFT_IEEE8023ADLAG 129 
#define  IFT_L2VLAN 128 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 int M_MCAST ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 struct sockaddr_dl* FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(struct ifnet *ifp, struct rtentry *rt, struct mbuf *m,
    struct sockaddr *dst, u_char *desten)
{
	int i;
	struct sockaddr_dl *sdl;

	if (m->m_flags & M_MCAST) {
		switch (ifp->if_type) {
		case IFT_ETHER:
		case IFT_FDDI:
		case IFT_L2VLAN:
		case IFT_IEEE8023ADLAG:
#if IFT_IEEE80211
		case IFT_IEEE80211:
#endif
		case IFT_BRIDGE:
			FUNC0(&FUNC5(dst)->sin6_addr, desten);
			return (1);
		case IFT_IEEE1394:
			for (i = 0; i < ifp->if_addrlen; i++)
				desten[i] = ~0;
			return (1);
		case IFT_ARCNET:
			*desten = 0;
			return (1);
		default:
			return (0); /* caller will free mbuf */
		}
	}

	if (rt == NULL) {
		/* this could happen, if we could not allocate memory */
		return (0); /* caller will free mbuf */
	}
	FUNC2(rt);
	if (rt->rt_gateway->sa_family != AF_LINK) {
		FUNC7("nd6_storelladdr: something odd happens\n");
		FUNC3(rt);
		return (0); /* caller will free mbuf */
	}
	sdl = FUNC4(rt->rt_gateway);
	if (sdl->sdl_alen == 0) {
		/* this should be impossible, but we bark here for debugging */
		FUNC7("nd6_storelladdr: sdl_alen == 0\n");
		FUNC3(rt);
		return (0); /* caller will free mbuf */
	}

	FUNC6(FUNC1(sdl), desten, sdl->sdl_alen);
	FUNC3(rt);
	return (1);
}