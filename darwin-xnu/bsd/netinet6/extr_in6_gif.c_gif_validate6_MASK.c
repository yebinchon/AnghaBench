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
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct ip6_hdr {int /*<<< orphan*/  ip6_src; int /*<<< orphan*/  ip6_dst; } ;
struct ifnet {int dummy; } ;
struct gif_softc {int /*<<< orphan*/  gif_if; scalar_t__ gif_pdst; scalar_t__ gif_psrc; } ;
typedef  int /*<<< orphan*/  sin6 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int IFF_LINK2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtentry* FUNC8 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 

__attribute__((used)) static int
FUNC10(
	const struct ip6_hdr *ip6,
	struct gif_softc *sc,
	struct ifnet *ifp)
{
	struct sockaddr_in6 *src, *dst;

	src = (struct sockaddr_in6 *)(void *)sc->gif_psrc;
	dst = (struct sockaddr_in6 *)(void *)sc->gif_pdst;

	/*
	 * Check for address match.  Note that the check is for an incoming
	 * packet.  We should compare the *source* address in our configuration
	 * and the *destination* address of the packet, and vice versa.
	 */
	if (!FUNC0(&src->sin6_addr, &ip6->ip6_dst) ||
	    !FUNC0(&dst->sin6_addr, &ip6->ip6_src))
		return (0);

	/* martian filters on outer source - done in ip6_input */

	/* ingress filters on outer source */
	if ((FUNC5(sc->gif_if) & IFF_LINK2) == 0 && ifp) {
		struct sockaddr_in6 sin6;
		struct rtentry *rt;

		FUNC3(&sin6, sizeof (sin6));
		sin6.sin6_family = AF_INET6;
		sin6.sin6_len = sizeof (struct sockaddr_in6);
		sin6.sin6_addr = ip6->ip6_src;

		rt = FUNC8((struct sockaddr *)&sin6, 0, 0);
		if (rt != NULL)
			FUNC1(rt);
		if (!rt || rt->rt_ifp != ifp) {
#if 0
			log(LOG_WARNING, "%s: packet from %s dropped "
			    "due to ingress filter\n", if_name(&sc->gif_if),
			    ip6_sprintf(&sin6.sin6_addr));
#endif
			if (rt != NULL) {
				FUNC2(rt);
				FUNC9(rt);
			}
			return (0);
		}
		FUNC2(rt);
		FUNC9(rt);
	}

	return (128 * 2);
}