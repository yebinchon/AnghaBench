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
typedef  int /*<<< orphan*/  u_int16_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_dl {int sdl_alen; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int /*<<< orphan*/  m_flags; } ;
typedef  int /*<<< orphan*/  sdl ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  struct mbuf* mbuf_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  ethertype_ipv6 ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERTYPE_IPV6 ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  M_LOOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr_in6 const*,struct sockaddr_dl*,int,void*,struct mbuf*) ; 

__attribute__((used)) static errno_t
FUNC4(ifnet_t ifp, protocol_family_t protocol_family,
    mbuf_t *m0, const struct sockaddr *dst_netaddr, void *route,
    char *type, char *edst)
{
#pragma unused(protocol_family)
	errno_t	result;
	struct sockaddr_dl sdl;
	struct mbuf *m = *m0;

	/*
	 * Tell ether_frameout it's ok to loop packet if necessary
	 */
	m->m_flags |= M_LOOP;

	result = FUNC3(ifp, (const struct sockaddr_in6 *)
	    (uintptr_t)(size_t)dst_netaddr, &sdl, sizeof (sdl), route, *m0);

	if (result == 0) {
		u_int16_t ethertype_ipv6 = FUNC2(ETHERTYPE_IPV6);

		FUNC1(&ethertype_ipv6, type, sizeof (ethertype_ipv6));
		FUNC1(FUNC0(&sdl), edst, sdl.sdl_alen);
	}

	return (result);
}