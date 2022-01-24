#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flavor; } ;
struct TYPE_7__ {TYPE_1__ dsh; } ;
typedef  TYPE_2__ arm_debug_state_t ;

/* Variables and functions */
#define  ARM_DEBUG_STATE32 129 
#define  ARM_DEBUG_STATE64 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(arm_debug_state_t *debug_state)
{
	if (debug_state) {
		switch (debug_state->dsh.flavor) {
		case ARM_DEBUG_STATE32:
			FUNC0(debug_state);
			break;
		case ARM_DEBUG_STATE64:
			FUNC1(debug_state);
			break;
		default:
			FUNC3("arm_debug_set");
			break;
		}
	} else {
		if (FUNC4(FUNC2()))
			FUNC1(debug_state);
		else
			FUNC0(debug_state);
	}
}