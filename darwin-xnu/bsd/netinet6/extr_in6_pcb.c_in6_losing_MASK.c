#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int rt_flags; int /*<<< orphan*/  rt_gateway; } ;
struct TYPE_2__ {struct rtentry* ro_rt; } ;
struct inpcb {TYPE_1__ in6p_route; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int RTF_CONDEMNED ; 
 int RTF_DYNAMIC ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void
FUNC6(struct inpcb *in6p)
{
	struct rtentry *rt;

	if ((rt = in6p->in6p_route.ro_rt) != NULL) {
		FUNC1(rt);
		if (rt->rt_flags & RTF_DYNAMIC) {
			/*
			 * Prevent another thread from modifying rt_key,
			 * rt_gateway via rt_setgate() after the rt_lock
			 * is dropped by marking the route as defunct.
			 */
			rt->rt_flags |= RTF_CONDEMNED;
			FUNC2(rt);
			(void) FUNC5(RTM_DELETE, FUNC3(rt),
			    rt->rt_gateway, FUNC4(rt), rt->rt_flags, NULL);
		} else {
			FUNC2(rt);
		}
		/*
		 * A new route can be allocated
		 * the next time output is attempted.
		 */
	}
	FUNC0(&in6p->in6p_route);
}