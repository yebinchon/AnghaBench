#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dtds_percpu; int /*<<< orphan*/  dtds_size; int /*<<< orphan*/ * dtds_base; } ;
typedef  TYPE_1__ dtrace_dstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  cpu_lock ; 
 int /*<<< orphan*/  dtrace_state_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(dtrace_dstate_t *dstate)
{
	FUNC0(&cpu_lock, LCK_MTX_ASSERT_OWNED);

	if (dstate->dtds_base == NULL)
		return;

	FUNC2(dstate->dtds_base, dstate->dtds_size);
	FUNC1(dtrace_state_cache, dstate->dtds_percpu);
}