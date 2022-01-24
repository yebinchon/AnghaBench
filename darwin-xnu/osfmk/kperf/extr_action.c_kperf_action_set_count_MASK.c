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
struct action {int pid_filter; void* kcallstack_depth; void* ucallstack_depth; } ;

/* Variables and functions */
 unsigned int ACTION_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 void* MAX_CALLSTACK_FRAMES ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_DIAG ; 
 unsigned int actionc ; 
 struct action* actionv ; 
 struct action* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct action*,unsigned int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct action*,struct action*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct action*,int /*<<< orphan*/ ,unsigned int) ; 

int
FUNC5(unsigned count)
{
	struct action *new_actionv = NULL, *old_actionv = NULL;
	unsigned old_count;

	/* easy no-op */
	if (count == actionc) {
		return 0;
	}

	/* TODO: allow shrinking? */
	if (count < actionc) {
		return EINVAL;
	}

	/* cap it for good measure */
	if (count > ACTION_MAX) {
		return EINVAL;
	}

	/* creating the action arror for the first time. create a few
	 * more things, too.
	 */
	if (actionc == 0) {
		int r;
		if ((r = FUNC2())) {
			return r;
		}
	}

	/* create a new array */
	new_actionv = FUNC0(count * sizeof(*new_actionv), VM_KERN_MEMORY_DIAG);
	if (new_actionv == NULL) {
		return ENOMEM;
	}

	old_actionv = actionv;
	old_count = actionc;

	if (old_actionv != NULL) {
		FUNC3(new_actionv, actionv, actionc * sizeof(*actionv));
	}

	FUNC4(&(new_actionv[actionc]), 0, (count - old_count) * sizeof(*actionv));

	for (unsigned int i = old_count; i < count; i++) {
		new_actionv[i].pid_filter = -1;
		new_actionv[i].ucallstack_depth = MAX_CALLSTACK_FRAMES;
		new_actionv[i].kcallstack_depth = MAX_CALLSTACK_FRAMES;
	}

	actionv = new_actionv;
	actionc = count;

	if (old_actionv != NULL) {
		FUNC1(old_actionv, old_count * sizeof(*actionv));
	}

	return 0;
}