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
typedef  int /*<<< orphan*/ * thread_call_t ;
typedef  int /*<<< orphan*/  thread_call_param_t ;
struct knote {int kn_sfflags; int /*<<< orphan*/  kn_hookid; int /*<<< orphan*/  kn_flags; int /*<<< orphan*/ * kn_hook; } ;
struct kevent_internal_s {int dummy; } ;
struct filt_timer_params {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_CLEAR ; 
 int /*<<< orphan*/  EV_ONESHOT ; 
 int FILTER_ACTIVE ; 
 int NOTE_ABSOLUTE ; 
 int /*<<< orphan*/  THREAD_CALL_OPTIONS_ONCE ; 
 int /*<<< orphan*/  THREAD_CALL_PRIORITY_HIGH ; 
 int /*<<< orphan*/  TIMER_IDLE ; 
 int /*<<< orphan*/  TIMER_IMMEDIATE ; 
 scalar_t__ FUNC0 (struct knote*) ; 
 int /*<<< orphan*/  FUNC1 (struct knote*,struct filt_timer_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  filt_timerexpire ; 
 int FUNC3 (struct kevent_internal_s*,struct filt_timer_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct knote*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct knote *kn, struct kevent_internal_s *kev)
{
	thread_call_t callout;
	struct filt_timer_params params;
	int error;

	if ((error = FUNC3(kev, &params)) != 0) {
		FUNC4(kn, error);
		return 0;
	}

	callout = FUNC6(filt_timerexpire,
	                (thread_call_param_t)kn, THREAD_CALL_PRIORITY_HIGH,
	                THREAD_CALL_OPTIONS_ONCE);

	if (NULL == callout) {
		FUNC4(kn, ENOMEM);
		return 0;
	}

	FUNC1(kn, &params);
	kn->kn_hook = callout;
	kn->kn_flags |= EV_CLEAR;
	FUNC5(&kn->kn_hookid, TIMER_IDLE, relaxed);

	/* NOTE_ABSOLUTE implies EV_ONESHOT */
	if (kn->kn_sfflags & NOTE_ABSOLUTE)
		kn->kn_flags |= EV_ONESHOT;

	if (FUNC0(kn)) {
		FUNC5(&kn->kn_hookid, TIMER_IMMEDIATE, relaxed);
		return FILTER_ACTIVE;
	} else {
		FUNC2(kn);
		return 0;
	}
}