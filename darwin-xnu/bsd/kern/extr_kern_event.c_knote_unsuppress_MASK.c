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
struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; int /*<<< orphan*/  kn_qos_override; int /*<<< orphan*/  kn_qos_index; int /*<<< orphan*/  kn_req_index; } ;

/* Variables and functions */
 int KN_ACTIVE ; 
 int KN_SUPPRESSED ; 
 int /*<<< orphan*/  KQWL_UTQ_RESET_WAKEUP_OVERRIDE ; 
 int KQ_WORKLOOP ; 
 scalar_t__ FUNC0 (struct kqtailq*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqtailq*,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kn_tqe ; 
 scalar_t__ FUNC2 (struct knote*) ; 
 struct kqueue* FUNC3 (struct knote*) ; 
 int /*<<< orphan*/  FUNC4 (struct knote*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqueue*) ; 
 struct kqtailq* FUNC8 (struct kqueue*,struct knote*) ; 
 scalar_t__ FUNC9 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC10 (struct kqworkloop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct knote *kn)
{
	struct kqtailq *suppressq;
	struct kqueue *kq = FUNC3(kn);

	FUNC7(kq);

	if ((kn->kn_status & KN_SUPPRESSED) == 0)
		return;

	kn->kn_status &= ~KN_SUPPRESSED;
	suppressq = FUNC8(kq, kn);
	FUNC1(suppressq, kn, kn_tqe);

	/*
	 * If the knote is no longer active, reset its push,
	 * and resynchronize kn_qos_index with kn_qos_override
	 */
	if ((kn->kn_status & KN_ACTIVE) == 0) {
		kn->kn_qos_override = kn->kn_req_index;
	}
	kn->kn_qos_index = kn->kn_qos_override;

	/* don't wakeup if unsuppressing just a stay-active knote */
	if (FUNC2(kn) && (kn->kn_status & KN_ACTIVE)) {
		FUNC4(kn);
	}

	if ((kq->kq_state & KQ_WORKLOOP) && FUNC0(suppressq)) {
		struct kqworkloop *kqwl = (struct kqworkloop *)kq;

		if (FUNC9(kqwl)) {
			/*
			 * kqworkloop_end_processing() or kqworkloop_begin_processing()
			 * will perform the required QoS computations when it unsets the
			 * processing mode.
			 */
		} else {
			FUNC5(kqwl);
			FUNC10(kqwl, KQWL_UTQ_RESET_WAKEUP_OVERRIDE, 0);
			FUNC6(kqwl);
		}
	}
}