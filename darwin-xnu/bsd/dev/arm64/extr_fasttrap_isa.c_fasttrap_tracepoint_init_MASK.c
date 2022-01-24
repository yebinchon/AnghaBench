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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  fasttrap_tracepoint_t ;
typedef  int /*<<< orphan*/  fasttrap_probe_type_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(proc_t *p, fasttrap_tracepoint_t *tp,
			 user_addr_t pc, fasttrap_probe_type_t type)
{
	if (FUNC2(p)) {
		return FUNC1(p, tp, pc, type);
	} else {
		return FUNC0(p, tp, pc, type);
	}
}