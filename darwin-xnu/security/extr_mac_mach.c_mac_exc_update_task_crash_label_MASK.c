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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct label*,struct label*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  exc_action_label_update ; 
 struct label* FUNC2 (struct task*) ; 
 struct task* kernel_task ; 

int FUNC3(struct task *task, struct label *label) {
	int error;

	FUNC1(task != kernel_task);

	struct label *crash_label = FUNC2(task);

	FUNC0(exc_action_label_update, NULL, crash_label, label);
	
	return (error);
}