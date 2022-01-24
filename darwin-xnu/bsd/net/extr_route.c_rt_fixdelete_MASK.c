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
struct rtentry {int rt_flags; struct rtentry* rt_parent; } ;
struct radix_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTF_CLONING ; 
 int RTF_PRCLONING ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct radix_node *rn, void *vp)
{
	struct rtentry *rt = (struct rtentry *)rn;
	struct rtentry *rt0 = vp;

	FUNC0(rnh_lock, LCK_MTX_ASSERT_OWNED);

	FUNC1(rt);
	if (rt->rt_parent == rt0 &&
	    !(rt->rt_flags & (RTF_CLONING | RTF_PRCLONING))) {
		/*
		 * Safe to drop rt_lock and use rt_key, since holding
		 * rnh_lock here prevents another thread from calling
		 * rt_setgate() on this route.
		 */
		FUNC2(rt);
		return (FUNC5(RTM_DELETE, FUNC3(rt), NULL,
		    FUNC4(rt), rt->rt_flags, NULL));
	}
	FUNC2(rt);
	return (0);
}