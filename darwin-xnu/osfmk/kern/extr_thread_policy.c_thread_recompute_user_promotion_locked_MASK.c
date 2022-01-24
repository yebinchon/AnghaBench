#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_qos_t ;
struct task_pend_token {int tpt_force_recompute_pri; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_10__ {int base_pri; int user_promotion_basepri; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAXPRI_THROTTLE ; 
 int /*<<< orphan*/  MAXPRI_USER ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_QOS_PROMOTE ; 
 int /*<<< orphan*/  THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  THREAD_USER_PROMOTION_CHANGE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_PRIORITY_OPERATIONS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

boolean_t
FUNC11(thread_t thread)
{
	boolean_t needs_update = FALSE;
	struct task_pend_token pend_token = {};
	int user_promotion_basepri = FUNC1(FUNC4(thread), MAXPRI_USER);
	int old_base_pri = thread->base_pri;
	thread_qos_t qos_promotion;

	/* Check if user promotion has changed */
	if (thread->user_promotion_basepri == user_promotion_basepri) {
		return needs_update;
	} else {
		FUNC0(KDEBUG_TRACE,
			(FUNC2(TURNSTILE_PRIORITY_OPERATIONS, (THREAD_USER_PROMOTION_CHANGE))) | DBG_FUNC_NONE,
			FUNC8(thread),
			user_promotion_basepri,
			thread->user_promotion_basepri,
			0, 0);
	}

	/* Update the user promotion base pri */
	thread->user_promotion_basepri = user_promotion_basepri;
	pend_token.tpt_force_recompute_pri = 1;

	if (user_promotion_basepri <= MAXPRI_THROTTLE) {
		qos_promotion = THREAD_QOS_UNSPECIFIED;
	} else {
		qos_promotion = FUNC10(user_promotion_basepri);
	}

	FUNC3(thread, TASK_POLICY_ATTRIBUTE,
			TASK_POLICY_QOS_PROMOTE, qos_promotion, 0, &pend_token);

	if (FUNC5(thread) &&
	    thread->base_pri != old_base_pri) {
		needs_update = TRUE;
	}

	FUNC9(thread);

	FUNC7(thread, &pend_token);

	FUNC6(thread);

	return needs_update;
}