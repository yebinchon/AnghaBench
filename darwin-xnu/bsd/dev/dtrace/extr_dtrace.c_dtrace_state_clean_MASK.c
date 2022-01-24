#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dtvs_dynvars; } ;
struct TYPE_6__ {scalar_t__ dts_activity; TYPE_1__ dts_vstate; } ;
typedef  TYPE_2__ dtrace_state_t ;

/* Variables and functions */
 scalar_t__ DTRACE_ACTIVITY_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(dtrace_state_t *state)
{
	if (state->dts_activity == DTRACE_ACTIVITY_INACTIVE)
		return;

	FUNC0(&state->dts_vstate.dtvs_dynvars);
	FUNC1(state);
}