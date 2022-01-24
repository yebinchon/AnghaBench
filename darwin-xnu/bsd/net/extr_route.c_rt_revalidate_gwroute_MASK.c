#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct rtentry {int rt_flags; scalar_t__ rt_ifp; TYPE_2__* rt_gateway; TYPE_1__* rt_gwroute; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ sa_family; } ;
struct TYPE_8__ {int rt_flags; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int RTF_CLONING ; 
 int RTF_GATEWAY ; 
 int RTF_PRCLONING ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 TYPE_2__* FUNC3 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 TYPE_2__* FUNC8 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*,TYPE_2__*,struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 

void
FUNC11(struct rtentry *rt, struct rtentry *gwrt)
{
	FUNC4(gwrt != NULL);

	FUNC1(rt);
	if ((rt->rt_flags & (RTF_GATEWAY | RTF_UP)) == (RTF_GATEWAY | RTF_UP) &&
	    rt->rt_ifp == gwrt->rt_ifp && rt->rt_gateway->sa_family ==
	    FUNC8(gwrt)->sa_family && (rt->rt_gwroute == NULL ||
	    !(rt->rt_gwroute->rt_flags & RTF_UP))) {
		boolean_t isequal;
		FUNC4(rt->rt_flags & (RTF_CLONING | RTF_PRCLONING));

		if (rt->rt_gateway->sa_family == AF_INET ||
		    rt->rt_gateway->sa_family == AF_INET6) {
			struct sockaddr_storage key_ss, gw_ss;
			/*
			 * We need to compare rt_key and rt_gateway; create
			 * local copies to get rid of any ifscope association.
			 */
			(void) FUNC10(FUNC8(gwrt), &key_ss, NULL);
			(void) FUNC10(rt->rt_gateway, &gw_ss, NULL);

			isequal = FUNC5(FUNC3(&key_ss), FUNC3(&gw_ss));
		} else {
			isequal = FUNC5(FUNC8(gwrt), rt->rt_gateway);
		}

		/* If they are the same, update gwrt */
		if (isequal) {
			FUNC2(rt);
			FUNC6(rnh_lock);
			FUNC0(rt);
			FUNC9(rt, FUNC8(rt), gwrt);
			FUNC2(rt);
			FUNC7(rnh_lock);
		} else {
			FUNC2(rt);
		}
	} else {
		FUNC2(rt);
	}
}