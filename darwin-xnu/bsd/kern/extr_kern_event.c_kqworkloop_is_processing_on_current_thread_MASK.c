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
struct TYPE_2__ {scalar_t__ kqr_thread; } ;
struct kqueue {int kq_state; } ;
struct kqworkloop {TYPE_1__ kqwl_request; struct kqueue kqwl_kqueue; } ;

/* Variables and functions */
 int KQ_PROCESSING ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 

__attribute__((used)) static inline bool
FUNC2(struct kqworkloop *kqwl)
{
	struct kqueue *kq = &kqwl->kqwl_kqueue;

	FUNC1(kq);

	if (kq->kq_state & KQ_PROCESSING) {
		/*
		 * KQ_PROCESSING is unset with the kqlock held, and the kqr thread is
		 * never modified while KQ_PROCESSING is set, meaning that peeking at
		 * its value is safe from this context.
		 */
		return kqwl->kqwl_request.kqr_thread == FUNC0();
	}
	return false;
}