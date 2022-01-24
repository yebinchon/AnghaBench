#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_t ;
struct TYPE_2__ {int /*<<< orphan*/  kqr_suppressed; } ;
struct kqworkloop {scalar_t__ kqwl_owner; TYPE_1__ kqwl_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ THREAD_NULL ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static thread_t
FUNC5(struct kqworkloop *kqwl)
{
	thread_t cur_owner = kqwl->kqwl_owner;

	FUNC1(FUNC0(&kqwl->kqwl_request.kqr_suppressed));
	if (cur_owner) {
		/*
		 * If the kqueue had an owner that prevented the thread request to
		 * go through, then no unbind happened, and we may have lingering
		 * overrides to drop.
		 */
		if (FUNC2(kqwl) != THREAD_QOS_UNSPECIFIED) {
			FUNC3(cur_owner);
		}
		FUNC4(cur_owner);
		kqwl->kqwl_owner = THREAD_NULL;
	}

	return cur_owner;
}