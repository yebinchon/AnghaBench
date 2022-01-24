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
struct ifnet {int if_index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
 size_t IPV6_ADDR_SCOPE_INTFACELOCAL ; 
 size_t IPV6_ADDR_SCOPE_LINKLOCAL ; 
 size_t IPV6_ADDR_SCOPE_ORGLOCAL ; 
 size_t IPV6_ADDR_SCOPE_SITELOCAL ; 
 struct scope6_id* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

void
FUNC5(struct ifnet *ifp)
{
	struct scope6_id *sid;

	FUNC2(FUNC0(ifp) != NULL);
	FUNC4(ifp);
	sid = FUNC1(ifp);
	/* N.B.: the structure is already zero'ed */
	/*
	 * XXX: IPV6_ADDR_SCOPE_xxx macros are not standard.
	 * Should we rather hardcode here?
	 */
	sid->s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] = ifp->if_index;
	sid->s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] = ifp->if_index;
#if MULTI_SCOPE
	/* by default, we don't care about scope boundary for these scopes. */
	sid->s6id_list[IPV6_ADDR_SCOPE_SITELOCAL] = 1;
	sid->s6id_list[IPV6_ADDR_SCOPE_ORGLOCAL] = 1;
#endif
	FUNC3(ifp);
}