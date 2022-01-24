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
typedef  scalar_t__ thread_t ;
struct proc {int dummy; } ;
struct kqueue {int kq_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  kqwl; struct kqueue* kq; } ;
typedef  TYPE_1__ kqueue_t ;

/* Variables and functions */
 int /*<<< orphan*/  KQUEUE_MIGHT_BE_LAST_REF ; 
 int KQ_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,struct kqueue*) ; 
 scalar_t__ FUNC4 (struct kqueue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static inline void
FUNC7(struct proc *p, kqueue_t kqu)
{
	struct kqueue *kq = kqu.kq;
	if (kq->kq_state & KQ_DYNAMIC) {
		FUNC0(p);
		if (FUNC4(kq, KQUEUE_MIGHT_BE_LAST_REF)) {
			thread_t cur_owner = FUNC5(kqu.kqwl);
			FUNC3(p, kq);
			FUNC1(p);
			if (cur_owner) FUNC6(cur_owner);
			FUNC2(kq);
		} else {
			FUNC1(p);
		}
	}
}