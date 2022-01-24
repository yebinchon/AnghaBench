#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* coalition_t ;
typedef  void* boolean_t ;
struct TYPE_6__ {size_t type; scalar_t__ active_count; int /*<<< orphan*/  id; void* should_notify; void* notified; void* terminated; void* termrequested; scalar_t__ reaped; } ;

/* Variables and functions */
 size_t COALITION_TYPE_MAX ; 
 void* FALSE ; 
 int /*<<< orphan*/  KERN_DEFAULT_SET ; 
 int /*<<< orphan*/  KERN_INVALID_NAME ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__** init_coalition ; 

kern_return_t
FUNC4(coalition_t coal)
{
	FUNC0(coal->type >= 0 && coal->type <= COALITION_TYPE_MAX);

	if (coal == init_coalition[coal->type]) {
		return KERN_DEFAULT_SET;
	}

	FUNC1(coal);

	if (coal->reaped) {
		FUNC3(coal);
		return KERN_INVALID_NAME;
	}

	if (coal->terminated || coal->termrequested) {
		FUNC3(coal);
		return KERN_TERMINATED;
	}

	coal->termrequested = TRUE;

	boolean_t do_notify = FALSE;
	uint64_t note_id = 0;
	uint32_t note_flags = 0;

	if (coal->active_count == 0) {
		/*
		 * We only notify once, when active_count reaches zero.
		 * We just set termrequested to zero. If the active count
		 * was already at zero (tasks died before we could request
		 * a termination notification), we should notify.
		 */
		FUNC0(!coal->terminated);
		coal->terminated = TRUE;

		FUNC0(!coal->notified);

		coal->notified = TRUE;
#if DEVELOPMENT || DEBUG
		do_notify = coal->should_notify;
#else
		do_notify = TRUE;
#endif
		note_id = coal->id;
		note_flags = 0;
	}

	FUNC3(coal);

	if (do_notify) {
		FUNC2(note_id, note_flags);
	}

	return KERN_SUCCESS;
}