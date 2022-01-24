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
typedef  int /*<<< orphan*/  thread_t ;
struct workqueue {int dummy; } ;
struct uu_workq_policy {int /*<<< orphan*/  qos_override; } ;
struct uthread {struct uu_workq_policy uu_workq_pri; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int EPERM ; 
 int /*<<< orphan*/  THREAD_QOS_UNSPECIFIED ; 
 int THREAD_TAG_WORKQUEUE ; 
 int TRACE_wq_override_reset ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uthread* FUNC1 (int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct workqueue*,struct uthread*,struct uu_workq_policy,struct uu_workq_policy,int) ; 
 int /*<<< orphan*/  FUNC6 (struct workqueue*) ; 

__attribute__((used)) static int
FUNC7(proc_t p, thread_t thread)
{
	struct uu_workq_policy old_pri, new_pri;
	struct workqueue *wq = FUNC2(p);
	struct uthread *uth = FUNC1(thread);

	if ((FUNC3(thread) & THREAD_TAG_WORKQUEUE) == 0) {
		return EPERM;
	}

	FUNC0(TRACE_wq_override_reset | DBG_FUNC_NONE, wq, 0, 0, 0, 0);

	FUNC4(wq);
	old_pri = new_pri = uth->uu_workq_pri;
	new_pri.qos_override = THREAD_QOS_UNSPECIFIED;
	FUNC5(p, wq, uth, old_pri, new_pri, false);
	FUNC6(wq);
	return 0;
}