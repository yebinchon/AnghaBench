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
struct rtentry {int rt_flags; int /*<<< orphan*/  (* rt_if_ref_fn ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  rt_ifp; } ;

/* Variables and functions */
 int RTF_IFREF ; 
 int RTF_NOIFREF ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct rtentry *rt)
{
	FUNC1(rt);

	if (rt->rt_if_ref_fn != NULL) {
		FUNC2((rt->rt_flags & (RTF_NOIFREF | RTF_IFREF)) == RTF_IFREF);
		/* Become a regular mutex, just in case */
		FUNC0(rt);
		rt->rt_if_ref_fn(rt->rt_ifp, -1);
		rt->rt_flags &= ~RTF_IFREF;
		rt->rt_if_ref_fn = NULL;
	}
}