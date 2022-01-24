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
typedef  int /*<<< orphan*/  sched_mode_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {int sched_flags; int /*<<< orphan*/  saved_mode; scalar_t__ policy_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCHED_TAILQ ; 
 int TH_SFLAG_DEMOTED_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(thread_t thread, sched_mode_t mode)
{
	if (thread->policy_reset)
		return;

	boolean_t removed = FUNC3(thread);

	/*
	 * TODO: Instead of having saved mode, have 'user mode' and 'true mode'.
	 * That way there's zero confusion over which the user wants
	 * and which the kernel wants.
	 */
	if (thread->sched_flags & TH_SFLAG_DEMOTED_MASK)
		thread->saved_mode = mode;
	else
		FUNC0(thread, mode);

	FUNC1(thread);

	if (removed)
		FUNC2(thread, SCHED_TAILQ);
}