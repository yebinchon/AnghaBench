#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct task_pend_token {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct task_pend_token*) ; 

kern_return_t
FUNC4(thread_t thread)
{
	struct task_pend_token pend_token = {};

	FUNC0(thread);
	if (!thread->active) {
		FUNC1(thread);
		return KERN_TERMINATED;
	}

	FUNC3(thread, &pend_token);

	FUNC1(thread);

	FUNC2(thread, &pend_token);

	return KERN_SUCCESS;
}