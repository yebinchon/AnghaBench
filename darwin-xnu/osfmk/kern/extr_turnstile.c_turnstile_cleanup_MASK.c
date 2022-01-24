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
typedef  int turnstile_update_flags_t ;
typedef  scalar_t__ turnstile_inheritor_t ;
typedef  TYPE_1__* thread_t ;
struct workqueue {int dummy; } ;
struct turnstile {int dummy; } ;
struct TYPE_3__ {scalar_t__ inheritor; int inheritor_flags; } ;

/* Variables and functions */
 scalar_t__ THREAD_NULL ; 
 int TURNSTILE_INHERITOR_NEEDS_PRI_UPDATE ; 
 scalar_t__ TURNSTILE_INHERITOR_NULL ; 
 int TURNSTILE_INHERITOR_THREAD ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int TURNSTILE_INHERITOR_WORKQ ; 
 int TURNSTILE_UPDATE_FLAGS_NONE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue*) ; 

void
FUNC6(void)
{
	thread_t thread = FUNC0();

	/* Get the old inheritor from calling thread struct */
	turnstile_inheritor_t old_inheritor = thread->inheritor;
	turnstile_update_flags_t inheritor_flags = thread->inheritor_flags;
	thread->inheritor = THREAD_NULL;
	thread->inheritor_flags = TURNSTILE_UPDATE_FLAGS_NONE;

	if (old_inheritor == TURNSTILE_INHERITOR_NULL) {
		/* no cleanup to do */
		return;
	}

	/* Perform priority demotion for old inheritor */
	if (inheritor_flags & TURNSTILE_INHERITOR_NEEDS_PRI_UPDATE) {
		FUNC4(old_inheritor,
			inheritor_flags);
	}

	/* Drop thread reference for old inheritor */
	if (inheritor_flags & TURNSTILE_INHERITOR_THREAD) {
		FUNC2(old_inheritor);
	} else if (inheritor_flags & TURNSTILE_INHERITOR_TURNSTILE) {
		FUNC3((struct turnstile *)old_inheritor);
	} else if (inheritor_flags & TURNSTILE_INHERITOR_WORKQ) {
		FUNC5((struct workqueue *)old_inheritor);
	} else {
		FUNC1("Inheritor flags lost along the way");
	}
}