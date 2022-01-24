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
typedef  scalar_t__ thread_qos_t ;
struct workqueue {int dummy; } ;
struct uu_workq_policy {scalar_t__ qos_max; } ;
struct uthread {struct uu_workq_policy uu_workq_pri; } ;
struct proc {int dummy; } ;
struct kqrequest {scalar_t__ kqr_qos_index; int /*<<< orphan*/  kqr_thread; } ;

/* Variables and functions */
 struct uthread* FUNC0 (int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,struct workqueue*,struct uthread*,struct uu_workq_policy,struct uu_workq_policy,int) ; 
 int /*<<< orphan*/  FUNC4 (struct workqueue*) ; 

void
FUNC5(struct proc *p, struct kqrequest *kqr)
{
	struct uu_workq_policy old_pri, new_pri;
	struct uthread *uth = FUNC0(kqr->kqr_thread);
	struct workqueue *wq = FUNC1(p);
	thread_qos_t qos = kqr->kqr_qos_index;

	if (uth->uu_workq_pri.qos_max == qos)
		return;

	FUNC2(wq);
	old_pri = new_pri = uth->uu_workq_pri;
	new_pri.qos_max = qos;
	FUNC3(p, wq, uth, old_pri, new_pri, false);
	FUNC4(wq);
}