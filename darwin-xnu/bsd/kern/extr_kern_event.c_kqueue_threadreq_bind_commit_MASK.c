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
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {struct kqrequest* uu_kqr_bound; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {scalar_t__ tr_state; } ;
struct kqrequest {TYPE_1__ kqr_req; } ;
typedef  int /*<<< orphan*/  kqueue_t ;

/* Variables and functions */
 scalar_t__ TR_STATE_BINDING ; 
 struct uthread* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,struct kqrequest*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct proc *p, thread_t thread)
{
	struct uthread *ut = FUNC0(thread);
	struct kqrequest *kqr = ut->uu_kqr_bound;
	kqueue_t kqu = FUNC3(p, kqr);

	FUNC1(kqu);
	if (kqr->kqr_req.tr_state == TR_STATE_BINDING) {
		FUNC4(p, &kqr->kqr_req, thread, 0);
	}
	FUNC2(kqu);
}