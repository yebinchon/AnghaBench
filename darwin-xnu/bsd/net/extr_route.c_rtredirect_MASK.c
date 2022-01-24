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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_ifa; int /*<<< orphan*/  rt_gateway; } ;
struct rt_addrinfo {struct sockaddr** rti_info; } ;
struct ifnet {unsigned int if_index; } ;
struct ifaddr {int /*<<< orphan*/  ifa_addr; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int sa_len; } ;
struct TYPE_5__ {short rts_dynamic; short rts_newgateway; int /*<<< orphan*/  rts_badredirect; } ;
struct TYPE_4__ {struct sockaddr* ifa_addr; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 unsigned int IFSCOPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  ROUTE_ENTRY_REFRESH ; 
 size_t RTAX_AUTHOR ; 
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 size_t RTAX_NETMASK ; 
 int RTF_CLONING ; 
 int RTF_DONE ; 
 int RTF_DYNAMIC ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int RTF_MODIFIED ; 
 int RTF_PRCLONING ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  RTM_REDIRECT ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct ifaddr* FUNC8 (struct sockaddr*) ; 
 struct ifaddr* FUNC9 (struct sockaddr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC12 (struct rtentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct rtentry*) ; 
 TYPE_3__* FUNC16 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct rt_addrinfo*,int,int) ; 
 int FUNC18 (struct rtentry*,int /*<<< orphan*/ ,struct sockaddr*) ; 
 struct rtentry* FUNC19 (struct sockaddr*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct rtentry*) ; 
 int FUNC21 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,struct sockaddr*,int,int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_2__ rtstat ; 
 struct sockaddr* FUNC22 (struct sockaddr*,struct sockaddr_storage*,unsigned int*) ; 

void
FUNC23(struct ifnet *ifp, struct sockaddr *dst, struct sockaddr *gateway,
    struct sockaddr *netmask, int flags, struct sockaddr *src,
    struct rtentry **rtp)
{
	struct rtentry *rt = NULL;
	int error = 0;
	short *stat = 0;
	struct rt_addrinfo info;
	struct ifaddr *ifa = NULL;
	unsigned int ifscope = (ifp != NULL) ? ifp->if_index : IFSCOPE_NONE;
	struct sockaddr_storage ss;
	int af = src->sa_family;

	FUNC1(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
	FUNC10(rnh_lock);

	/*
	 * Transform src into the internal routing table form for
	 * comparison against rt_gateway below.
	 */
#if INET6
	if ((af == AF_INET) || (af == AF_INET6))
#else
	if (af == AF_INET)
#endif /* !INET6 */
		src = FUNC22(src, &ss, &ifscope);

	/*
	 * Verify the gateway is directly reachable; if scoped routing
	 * is enabled, verify that it is reachable from the interface
	 * where the ICMP redirect arrived on.
	 */
	if ((ifa = FUNC9(gateway, ifscope)) == NULL) {
		error = ENETUNREACH;
		goto out;
	}

	/* Lookup route to the destination (from the original IP header) */
	rt = FUNC19(dst, 0, RTF_CLONING|RTF_PRCLONING, ifscope);
	if (rt != NULL)
		FUNC2(rt);

	/*
	 * If the redirect isn't from our current router for this dst,
	 * it's either old or wrong.  If it redirects us to ourselves,
	 * we have a routing loop, perhaps as a result of an interface
	 * going down recently.  Holding rnh_lock here prevents the
	 * possibility of rt_ifa/ifa's ifa_addr from changing (e.g.
	 * in_ifinit), so okay to access ifa_addr without locking.
	 */
	if (!(flags & RTF_DONE) && rt != NULL &&
	    (!FUNC7(src, rt->rt_gateway) || !FUNC7(rt->rt_ifa->ifa_addr,
	    ifa->ifa_addr))) {
		error = EINVAL;
	} else {
		FUNC0(ifa);
		if ((ifa = FUNC8(gateway))) {
			FUNC0(ifa);
			ifa = NULL;
			error = EHOSTUNREACH;
		}
	}

	if (ifa) {
		FUNC0(ifa);
		ifa = NULL;
	}

	if (error) {
		if (rt != NULL)
			FUNC5(rt);
		goto done;
	}

	/*
	 * Create a new entry if we just got back a wildcard entry
	 * or the the lookup failed.  This is necessary for hosts
	 * which use routing redirects generated by smart gateways
	 * to dynamically build the routing tables.
	 */
	if ((rt == NULL) || (FUNC16(rt) != NULL && FUNC16(rt)->sa_len < 2))
		goto create;
	/*
	 * Don't listen to the redirect if it's
	 * for a route to an interface.
	 */
	FUNC3(rt);
	if (rt->rt_flags & RTF_GATEWAY) {
		if (((rt->rt_flags & RTF_HOST) == 0) && (flags & RTF_HOST)) {
			/*
			 * Changing from route to net => route to host.
			 * Create new route, rather than smashing route
			 * to net; similar to cloned routes, the newly
			 * created host route is scoped as well.
			 */
create:
			if (rt != NULL)
				FUNC5(rt);
			flags |=  RTF_GATEWAY | RTF_DYNAMIC;
			error = FUNC21(RTM_ADD, dst,
			    gateway, netmask, flags, NULL, ifscope);
			stat = &rtstat.rts_dynamic;
		} else {
			/*
			 * Smash the current notion of the gateway to
			 * this destination.  Should check about netmask!!!
			 */
			rt->rt_flags |= RTF_MODIFIED;
			flags |= RTF_MODIFIED;
			stat = &rtstat.rts_newgateway;
			/*
			 * add the key and gateway (in one malloc'd chunk).
			 */
			error = FUNC18(rt, FUNC15(rt), gateway);
			FUNC5(rt);
		}
	} else {
		FUNC5(rt);
		error = EHOSTUNREACH;
	}
done:
	if (rt != NULL) {
		FUNC4(rt);
		if (!error) {
			/* Enqueue event to refresh flow route entries */
			FUNC12(rt, NULL, ROUTE_ENTRY_REFRESH, NULL, FALSE);
			if (rtp)
				*rtp = rt;
			else
				FUNC20(rt);
		}
		else
			FUNC20(rt);
	}
out:
	if (error) {
		rtstat.rts_badredirect++;
	} else {
		if (stat != NULL)
			(*stat)++;

		if (af == AF_INET)
			FUNC14();
#if INET6
		else if (af == AF_INET6)
			routegenid_inet6_update();
#endif /* INET6 */
	}
	FUNC11(rnh_lock);
	FUNC6((caddr_t)&info, sizeof(info));
	info.rti_info[RTAX_DST] = dst;
	info.rti_info[RTAX_GATEWAY] = gateway;
	info.rti_info[RTAX_NETMASK] = netmask;
	info.rti_info[RTAX_AUTHOR] = src;
	FUNC17(RTM_REDIRECT, &info, flags, error);
}