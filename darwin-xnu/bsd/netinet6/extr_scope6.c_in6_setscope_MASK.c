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
typedef  int u_int32_t ;
struct scope6_id {int* s6id_list; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr16; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 scalar_t__ FUNC2 (struct in6_addr*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
#define  IPV6_ADDR_SCOPE_INTFACELOCAL 131 
#define  IPV6_ADDR_SCOPE_LINKLOCAL 130 
#define  IPV6_ADDR_SCOPE_ORGLOCAL 129 
#define  IPV6_ADDR_SCOPE_SITELOCAL 128 
 struct scope6_id* FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int FUNC8 (struct in6_addr*) ; 

int
FUNC9(struct in6_addr *in6, struct ifnet *ifp, u_int32_t *ret_id)
{
	int scope;
	u_int32_t zoneid = 0;
	struct scope6_id *sid;

	/*
	 * special case: the loopback address can only belong to a loopback
	 * interface.
	 */
	if (FUNC1(in6)) {
		if (!(ifp->if_flags & IFF_LOOPBACK)) {
			return (EINVAL);
		} else {
			if (ret_id != NULL)
				*ret_id = 0; /* there's no ambiguity */
			return (0);
		}
	}

	scope = FUNC8(in6);

	FUNC7(ifp);
	if (FUNC0(ifp) == NULL) {
		FUNC6(ifp);
		if (ret_id)
			*ret_id = 0;
		return (EINVAL);
	}
	sid = FUNC4(ifp);
	switch (scope) {
	case IPV6_ADDR_SCOPE_INTFACELOCAL: /* should be interface index */
		zoneid = sid->s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL];
		break;

	case IPV6_ADDR_SCOPE_LINKLOCAL:
		zoneid = sid->s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL];
		break;

	case IPV6_ADDR_SCOPE_SITELOCAL:
		zoneid = sid->s6id_list[IPV6_ADDR_SCOPE_SITELOCAL];
		break;

	case IPV6_ADDR_SCOPE_ORGLOCAL:
		zoneid = sid->s6id_list[IPV6_ADDR_SCOPE_ORGLOCAL];
		break;
	default:
		zoneid = 0;	/* XXX: treat as global. */
		break;
	}
	FUNC6(ifp);

	if (ret_id != NULL)
		*ret_id = zoneid;

	if (FUNC3(in6) || FUNC2(in6))
		in6->s6_addr16[1] = FUNC5(zoneid & 0xffff); /* XXX */

	return (0);
}