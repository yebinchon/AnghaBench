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
struct kqueue {int kq_state; scalar_t__ kq_p; } ;
struct kqrequest {int kqr_state; scalar_t__ kqr_thread; } ;
typedef  int /*<<< orphan*/  kq_index_t ;

/* Variables and functions */
 int KQR_THREQUESTED ; 
 int KQ_WORKLOOP ; 
 scalar_t__ THREAD_NULL ; 
 int WORKQ_THREADREQ_SET_AST_ON_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct kqrequest*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct kqueue *kq, struct kqrequest *kqr, kq_index_t qos)
{
	FUNC0(kqr->kqr_state & KQR_THREQUESTED);
	FUNC0(kqr->kqr_thread == THREAD_NULL);

	FUNC2(kq);

	int flags = 0;
	if ((kq->kq_state & KQ_WORKLOOP) && kq->kq_p == FUNC1()) {
		flags |= WORKQ_THREADREQ_SET_AST_ON_FAILURE;
	}
	FUNC3(kq->kq_p, kqr, qos, flags);
}