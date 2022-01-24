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
typedef  scalar_t__ u_int32_t ;
struct in6_addr {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; struct in6_addr sin6_addr; } ;
struct ifnet {scalar_t__ if_index; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ if_index ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

int
FUNC3(
	struct sockaddr_in6 *sin6,
	const struct in6_addr *in6,
	struct ifnet *ifp)
{
	u_int32_t scopeid;

	sin6->sin6_addr = *in6;

	/*
	 * don't try to read *in6 beyond here, since the caller may
	 * ask us to overwrite existing sockaddr_in6
	 */

	sin6->sin6_scope_id = 0;
	if (FUNC1(in6) || FUNC0(in6)) {
		/*
		 * KAME assumption: link id == interface id
		 */
		scopeid = FUNC2(sin6->sin6_addr.s6_addr16[1]);
		if (scopeid) {
			/*
			 * sanity check
			 *
			 * Since scopeid is unsigned, we only have to check it
			 * against if_index
			 */
			if (if_index < scopeid)
				return (ENXIO);
			if (ifp && ifp->if_index != scopeid)
				return (ENXIO);
			sin6->sin6_addr.s6_addr16[1] = 0;
			sin6->sin6_scope_id = scopeid;
		}
	}

	return (0);
}