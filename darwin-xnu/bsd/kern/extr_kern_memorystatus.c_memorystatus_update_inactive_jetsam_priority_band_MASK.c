#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {int p_memstat_state; int p_memstat_effectivepriority; scalar_t__ p_memstat_memlimit; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ FALSE ; 
 int JETSAM_PRIORITY_IDLE ; 
 scalar_t__ MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_DISABLE ; 
 scalar_t__ MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_ENABLE ; 
 int P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ memorystatus_highwater_enabled ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

int
FUNC9(pid_t pid, uint32_t op_flags, int jetsam_prio, boolean_t effective_now)
{
	int error = 0;	
	boolean_t enable = FALSE;
	proc_t	p = NULL;

	if (op_flags == MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_ENABLE) {
		enable = TRUE;
	} else if (op_flags == MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_DISABLE) {
		enable = FALSE;
	} else {
		return EINVAL;
	}

	p = FUNC4(pid);
	if (p != NULL) {

		if ((enable && ((p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) == P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND)) ||
		    (!enable && ((p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) == 0))) {
			/*
			 * No change in state.
			 */

		} else {

			FUNC5();

			if (enable) {
				p->p_memstat_state |= P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND;
				FUNC2(p, TRUE);

				if (effective_now) {
					if (p->p_memstat_effectivepriority < jetsam_prio) {
						if(memorystatus_highwater_enabled) {
							/*
							 * Process is about to transition from
							 * inactive --> active
							 * assign active state
							 */
							boolean_t is_fatal;
							boolean_t use_active = TRUE;
							FUNC0(p, is_fatal);
							FUNC8(p->task, (p->p_memstat_memlimit > 0) ? p->p_memstat_memlimit : -1, NULL, use_active, is_fatal);
						}
						FUNC3(p, jetsam_prio, FALSE, FALSE);
					}
				} else {
					if (FUNC1(p)) {
						FUNC3(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
					}
				}
			} else {

				p->p_memstat_state &= ~P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND;
				FUNC2(p, TRUE);

				if (effective_now) {
					if (p->p_memstat_effectivepriority == jetsam_prio) {
						FUNC3(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
					}
				} else {
					if (FUNC1(p)) {
						FUNC3(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
					}
				}
			}

			FUNC6();
		}
		FUNC7(p);
		error = 0;

	} else {
		error = ESRCH;
	}

	return error;
}