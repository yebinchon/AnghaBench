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
struct rtentry_dbg {int /*<<< orphan*/  rtd_inuse; int /*<<< orphan*/  rtd_alloc; } ;
struct rtentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTD_INUSE ; 
 int RTD_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry_dbg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int rte_debug ; 
 int /*<<< orphan*/  rte_zone ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct rtentry *
FUNC3(void)
{
	struct rtentry_dbg *rte;

	rte = ((struct rtentry_dbg *)FUNC2(rte_zone));
	if (rte != NULL) {
		FUNC0(rte, sizeof (*rte));
		if (rte_debug & RTD_TRACE)
			FUNC1(&rte->rtd_alloc);
		rte->rtd_inuse = RTD_INUSE;
	}
	return ((struct rtentry *)rte);
}