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
struct scope6_id {int* s6id_list; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
#define  IPV6_ADDR_SCOPE_LINKLOCAL 131 
#define  IPV6_ADDR_SCOPE_NODELOCAL 130 
#define  IPV6_ADDR_SCOPE_ORGLOCAL 129 
#define  IPV6_ADDR_SCOPE_SITELOCAL 128 
 struct scope6_id* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int FUNC4 (struct in6_addr*) ; 

int
FUNC5(struct ifnet *ifp, struct in6_addr *addr)
{
	int scope = FUNC4(addr);
	int retid = 0;
	struct scope6_id *sid;

	FUNC3(ifp);
	if (FUNC0(ifp) == NULL)
		goto err;
	sid = FUNC1(ifp);
	switch (scope) {
	case IPV6_ADDR_SCOPE_NODELOCAL:
		retid = -1;	/* XXX: is this an appropriate value? */
		break;
	case IPV6_ADDR_SCOPE_LINKLOCAL:
		retid = sid->s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL];
		break;
	case IPV6_ADDR_SCOPE_SITELOCAL:
		retid = sid->s6id_list[IPV6_ADDR_SCOPE_SITELOCAL];
		break;
	case IPV6_ADDR_SCOPE_ORGLOCAL:
		retid = sid->s6id_list[IPV6_ADDR_SCOPE_ORGLOCAL];
		break;
	default:
		break;	/* XXX: value 0, treat as global. */
	}
err:
	FUNC2(ifp);

	return (retid);
}