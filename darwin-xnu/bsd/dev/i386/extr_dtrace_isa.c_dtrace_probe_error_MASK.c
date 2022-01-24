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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  dts_arg_error_illval; } ;
typedef  TYPE_1__ dtrace_state_t ;
typedef  int /*<<< orphan*/  dtrace_epid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  dtrace_probeid_error ; 

void
FUNC1(dtrace_state_t *state, dtrace_epid_t epid, int which,
    int fltoffs, int fault, uint64_t illval)
{
    /*
     * For the case of the error probe firing lets
     * stash away "illval" here, and special-case retrieving it in DIF_VARIABLE_ARG.
     */
    state->dts_arg_error_illval = illval;
    FUNC0( dtrace_probeid_error, (uint64_t)(uintptr_t)state, epid, which, fltoffs, fault );
}