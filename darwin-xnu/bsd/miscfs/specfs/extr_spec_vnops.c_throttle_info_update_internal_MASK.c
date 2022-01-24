#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
struct bufattr {int ba_flags; } ;
struct _throttle_io_info_t {int /*<<< orphan*/  throttle_io_count; int /*<<< orphan*/ * throttle_last_IO_timestamp; int /*<<< orphan*/ * throttle_window_start_timestamp; int /*<<< orphan*/ * throttle_inflight_count; int /*<<< orphan*/ * throttle_last_IO_pid; scalar_t__ throttle_disabled; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_pid; } ;
struct TYPE_7__ {int /*<<< orphan*/  uu_throttle_bc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA_IO_TIER_UPGRADE ; 
 int /*<<< orphan*/  BA_STRATEGY_TRACKED_IO ; 
 int /*<<< orphan*/  B_PASSIVE ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_THROTTLE ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bufattr*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_THROTTLE_WINDOW ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int THROTTLE_LEVEL_NONE ; 
 int THROTTLE_LEVEL_THROTTLED ; 
 TYPE_6__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ lowpri_throttle_enabled ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct _throttle_io_info_t*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static
int FUNC14(struct _throttle_io_info_t *info, uthread_t ut, int flags, boolean_t isssd, boolean_t inflight, struct bufattr *bap)
{
	int	thread_throttle_level;

	if (lowpri_throttle_enabled == 0 || info->throttle_disabled)
		return THROTTLE_LEVEL_NONE;

	if (ut == NULL)
		ut = FUNC9(FUNC8());

	if (bap && inflight && !ut->uu_throttle_bc) {
		thread_throttle_level = FUNC1(bap);
		if (FUNC2(bap->ba_flags, BA_IO_TIER_UPGRADE)) {
			thread_throttle_level--;
		}
	} else {
		thread_throttle_level = FUNC12(ut);
	}

	if (thread_throttle_level != THROTTLE_LEVEL_NONE) {
        if(!FUNC2(flags, B_PASSIVE)) {
			info->throttle_last_IO_pid[thread_throttle_level] = FUNC11();
			if (inflight && !ut->uu_throttle_bc) {
				if (NULL != bap) {
					FUNC6(bap->ba_flags, BA_STRATEGY_TRACKED_IO);
				}
				FUNC5(&info->throttle_inflight_count[thread_throttle_level]);
			} else {
				FUNC10(&info->throttle_window_start_timestamp[thread_throttle_level]);
			}
			FUNC3((FUNC0(DBG_THROTTLE, OPEN_THROTTLE_WINDOW)) | DBG_FUNC_NONE,
					FUNC7()->p_pid, thread_throttle_level, 0, 0, 0);
		}
		FUNC10(&info->throttle_last_IO_timestamp[thread_throttle_level]);
	}


	if (thread_throttle_level >= THROTTLE_LEVEL_THROTTLED) {
		/*
		 * I'd really like to do the IOSleep here, but
		 * we may be holding all kinds of filesystem related locks
		 * and the pages for this I/O marked 'busy'...
		 * we don't want to cause a normal task to block on
		 * one of these locks while we're throttling a task marked
		 * for low priority I/O... we'll mark the uthread and
		 * do the delay just before we return from the system
		 * call that triggered this I/O or from vnode_pagein
		 */
	        FUNC4(1, &info->throttle_io_count);

		FUNC13(ut, info, FALSE, isssd);
	}

	return thread_throttle_level;
}