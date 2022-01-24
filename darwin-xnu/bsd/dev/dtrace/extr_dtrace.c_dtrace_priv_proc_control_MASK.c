#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dcr_action; } ;
struct TYPE_11__ {TYPE_1__ dts_cred; } ;
typedef  TYPE_2__ dtrace_state_t ;
struct TYPE_14__ {size_t cpu_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  p_lflag; } ;

/* Variables and functions */
 TYPE_9__* CPU ; 
 int /*<<< orphan*/  CPU_DTRACE_UPRIV ; 
 int DTRACE_CRA_PROC_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_LNOATTACH ; 
 TYPE_8__* cpu_core ; 
 TYPE_6__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(dtrace_state_t *state)
{
	if (FUNC0(FUNC1()->p_lflag, P_LNOATTACH))
		goto bad;

	if (FUNC3() && !FUNC2(FUNC1()))
		goto bad;

	if (state->dts_cred.dcr_action & DTRACE_CRA_PROC_CONTROL)
		return (1);

	if (FUNC6(state) &&
	    FUNC5(state) &&
	    FUNC4())
		return (1);

bad:
	cpu_core[CPU->cpu_id].cpuc_dtrace_flags |= CPU_DTRACE_UPRIV;

	return (0);
}