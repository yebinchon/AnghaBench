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
struct task {int dummy; } ;
struct proc {int dummy; } ;
struct label {int dummy; } ;
struct exception_action {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,struct exception_action*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  exc_action_check_exception_send ; 
 struct proc* FUNC2 (struct task*) ; 
 struct label* FUNC3 (struct task*) ; 
 struct label* FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct label*) ; 

int
FUNC6(struct task *victim_task, struct exception_action *action)
{
	int error = 0;

	struct proc *p = FUNC2(victim_task);
	struct label *bsd_label = NULL;
	struct label *label = NULL;

	if (p != NULL) {
		// Create a label from the still existing bsd process...
		label = bsd_label = FUNC4(p);
	} else {
		// ... otherwise use the crash label on the task.
		label = FUNC3(victim_task);
	}

	if (label == NULL) {
		FUNC1("mac_exc_action_check_exception_send: no exc_action label for process");
		return EPERM;
	}

	FUNC0(exc_action_check_exception_send, label, action, action->label);

	if (bsd_label != NULL) {
		FUNC5(bsd_label);
	}

	return (error);
}