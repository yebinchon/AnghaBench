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
struct kqworkq {int /*<<< orphan*/  kqwq_kqueue; } ;
struct kqrequest {int kqr_state; } ;
typedef  int /*<<< orphan*/  kq_index_t ;

/* Variables and functions */
 int KQR_THREQUESTED ; 
 int KQR_WAKEUP ; 
 int /*<<< orphan*/  KQWQ_NBUCKETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct kqrequest*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kqrequest* FUNC4 (struct kqworkq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct kqworkq *kqwq, kq_index_t qos_index)
{
	struct kqrequest *kqr;

	/* convert to thread qos value */
	FUNC0(qos_index < KQWQ_NBUCKETS);

	FUNC1(kqwq);
	kqr = FUNC4(kqwq, qos_index);

	if ((kqr->kqr_state & KQR_WAKEUP) == 0) {
		kqr->kqr_state |= KQR_WAKEUP;
		if ((kqr->kqr_state & KQR_THREQUESTED) == 0) {
			FUNC3(&kqwq->kqwq_kqueue, kqr, qos_index, 0);
		}
	}
	FUNC2(kqwq);
}