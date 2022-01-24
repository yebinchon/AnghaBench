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
struct proc {int dummy; } ;
struct kqueue {struct proc* kq_p; } ;
struct knote_lock_ctx {int dummy; } ;
struct knote {int kn_status; int /*<<< orphan*/  kn_fp; int /*<<< orphan*/  kn_id; } ;
struct TYPE_2__ {scalar_t__ f_isfd; int /*<<< orphan*/  (* f_detach ) (struct knote*) ;} ;

/* Variables and functions */
 int KN_ATTACHED ; 
 int KN_DROPPING ; 
 int KN_LOCKED ; 
 int KN_VANISHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct knote*) ; 
 TYPE_1__* FUNC3 (struct knote*) ; 
 int /*<<< orphan*/  FUNC4 (struct knote*) ; 
 int /*<<< orphan*/  FUNC5 (struct knote*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*,struct knote*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqueue*,struct knote*,struct proc*,struct knote_lock_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC9 (struct knote*) ; 

__attribute__((used)) static void
FUNC10(struct kqueue *kq, struct knote *kn, struct knote_lock_ctx *knlc)
{
	struct proc *p = kq->kq_p;

	FUNC8(kq);

	FUNC0((kn->kn_status & KN_DROPPING) == 0);
	if (knlc == NULL) {
		FUNC0((kn->kn_status & KN_LOCKED) == 0);
	}
	kn->kn_status |= KN_DROPPING;

	FUNC5(kn);
	FUNC2(kn);
	FUNC6(kq, kn);

	/* If we are attached, disconnect from the source first */
	if (kn->kn_status & KN_ATTACHED) {
		FUNC3(kn)->f_detach(kn);
	}

	/* kq may be freed when kq_remove_knote() returns */
	FUNC7(kq, kn, p, knlc);
	if (FUNC3(kn)->f_isfd && ((kn->kn_status & KN_VANISHED) == 0))
		FUNC1(p, kn->kn_id, kn->kn_fp, 0);

	FUNC4(kn);
}