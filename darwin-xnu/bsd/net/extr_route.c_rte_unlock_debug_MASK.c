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
typedef  size_t uint32_t ;
struct rtentry_dbg {int /*<<< orphan*/ * rtd_unlock; int /*<<< orphan*/  rtd_unlock_cnt; } ;
struct rtentry {int dummy; } ;

/* Variables and functions */
 size_t CTRACE_HIST_SIZE ; 
 int RTD_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int rte_debug ; 

__attribute__((used)) static inline void
FUNC3(struct rtentry_dbg *rte)
{
	uint32_t idx;

	FUNC0((struct rtentry *)rte);
	idx = FUNC1(&rte->rtd_unlock_cnt, 1) % CTRACE_HIST_SIZE;
	if (rte_debug & RTD_TRACE)
		FUNC2(&rte->rtd_unlock[idx]);
}