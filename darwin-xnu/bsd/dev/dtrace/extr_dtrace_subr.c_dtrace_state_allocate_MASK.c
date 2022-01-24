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
typedef  size_t minor_t ;
typedef  int /*<<< orphan*/  dtrace_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dtrace_clients ; 

dtrace_state_t*
FUNC3(minor_t minor)
{
	dtrace_state_t *state = FUNC1(sizeof(dtrace_state_t), M_TEMP, M_ZERO | M_WAITOK);
	if (FUNC2(&dtrace_clients[minor], NULL, state) != NULL) {
		// We have been raced by another client for this number, abort
		FUNC0(state, M_TEMP);
		return NULL;
	}
	return state;
}