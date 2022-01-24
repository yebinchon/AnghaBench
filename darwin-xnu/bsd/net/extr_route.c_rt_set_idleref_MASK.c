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
struct rtentry {int rt_flags; int /*<<< orphan*/  rt_ifp; int /*<<< orphan*/  (* rt_if_ref_fn ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/ * rt_parent; } ;

/* Variables and functions */
 int RTF_BROADCAST ; 
 int RTF_IFREF ; 
 int RTF_MULTICAST ; 
 int RTF_NOIFREF ; 
 int RTF_UP ; 
 int RTF_WASCLONED ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct rtentry *rt)
{
	FUNC1(rt);

	/*
	 * We currently keep idle refcnt only on unicast cloned routes
	 * that aren't marked with RTF_NOIFREF.
	 */
	if (rt->rt_parent != NULL && !(rt->rt_flags &
	    (RTF_NOIFREF|RTF_BROADCAST | RTF_MULTICAST)) &&
	    (rt->rt_flags & (RTF_UP|RTF_WASCLONED|RTF_IFREF)) ==
	    (RTF_UP|RTF_WASCLONED)) {
		FUNC2(rt);	/* drop existing refcnt if any  */
		rt->rt_if_ref_fn = rte_if_ref;
		/* Become a regular mutex, just in case */
		FUNC0(rt);
		rt->rt_if_ref_fn(rt->rt_ifp, 1);
		rt->rt_flags |= RTF_IFREF;
	}
}