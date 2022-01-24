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
struct kqrequest {int /*<<< orphan*/  kqr_state; int /*<<< orphan*/  kqr_qos_index; } ;

/* Variables and functions */
 int KEVENT_FLAG_PARKING ; 
 int /*<<< orphan*/  KQR_WAKEUP ; 
 int /*<<< orphan*/  KQWQAE_END_PROCESSING ; 
 int /*<<< orphan*/  FUNC0 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kqworkq*,struct kqrequest*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct kqworkq *kqwq, struct kqrequest *kqr,
		int kevent_flags)
{
	if (!FUNC2(&kqwq->kqwq_kqueue, kqr->kqr_qos_index)) {
		/* remember we didn't process everything */
		FUNC0(kqwq);
		kqr->kqr_state |= KQR_WAKEUP;
		FUNC1(kqwq);
	}

	if (kevent_flags & KEVENT_FLAG_PARKING) {
		/*
		 * if acknowledge events "succeeds" it means there are events,
		 * which is a failure condition for end_processing.
		 */
		int rc = FUNC3(kqwq, kqr, kevent_flags,
				KQWQAE_END_PROCESSING);
		if (rc == 0) {
			return -1;
		}
	}

	return 0;
}