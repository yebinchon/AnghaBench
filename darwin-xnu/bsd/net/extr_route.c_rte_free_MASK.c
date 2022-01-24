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
struct rtentry {scalar_t__ rt_refcnt; } ;

/* Variables and functions */
 int RTD_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rtentry*,scalar_t__) ; 
 int rte_debug ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  rte_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rtentry*) ; 

__attribute__((used)) static void
FUNC3(struct rtentry *p)
{
	if (rte_debug & RTD_DEBUG) {
		FUNC1(p);
		return;
	}

	if (p->rt_refcnt != 0) {
		FUNC0("rte_free: rte=%p refcnt=%d non-zero\n", p, p->rt_refcnt);
		/* NOTREACHED */
	}

	FUNC2(rte_zone, p);
}