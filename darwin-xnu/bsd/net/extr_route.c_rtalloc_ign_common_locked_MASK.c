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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtentry {int /*<<< orphan*/ * rt_ifp; } ;
struct route {struct rtentry* ro_rt; int /*<<< orphan*/  ro_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct route*) ; 
 int /*<<< orphan*/  FUNC1 (struct route*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 struct rtentry* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC7(struct route *ro, uint32_t ignore,
    unsigned int ifscope)
{
	struct rtentry *rt;

	if ((rt = ro->ro_rt) != NULL) {
		FUNC4(rt);
		if (rt->rt_ifp != NULL && !FUNC1(ro)) {
			FUNC5(rt);
			return;
		}
		FUNC5(rt);
		FUNC0(ro);	/* rnh_lock already held */
	}
	ro->ro_rt = FUNC6(&ro->ro_dst, 1, ignore, ifscope);
	if (ro->ro_rt != NULL) {
		FUNC2(ro->ro_rt);
		FUNC3(ro->ro_rt);
	}
}