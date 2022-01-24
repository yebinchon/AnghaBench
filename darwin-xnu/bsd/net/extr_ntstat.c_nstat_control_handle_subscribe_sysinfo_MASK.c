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
struct TYPE_3__ {int /*<<< orphan*/  ncs_mtx; int /*<<< orphan*/  ncs_flags; } ;
typedef  TYPE_1__ nstat_control_state ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  NSTAT_FLAG_SYSINFO_SUBSCRIBED ; 
 int /*<<< orphan*/  PRIV_NET_PRIVILEGED_NETWORK_STATISTICS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC4(
    nstat_control_state		*state)
{
	errno_t result = FUNC3(FUNC0(), PRIV_NET_PRIVILEGED_NETWORK_STATISTICS, 0);

	if (result != 0)
	{
		return result;
	}

	FUNC1(&state->ncs_mtx);
	state->ncs_flags |= NSTAT_FLAG_SYSINFO_SUBSCRIBED;
	FUNC2(&state->ncs_mtx);

	return 0;
}