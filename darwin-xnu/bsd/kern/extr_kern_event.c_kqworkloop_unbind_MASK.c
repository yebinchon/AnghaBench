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
typedef  scalar_t__ thread_t ;
struct kqrequest {scalar_t__ kqr_thread; int /*<<< orphan*/  kqr_suppressed; } ;
struct kqueue {int kq_state; } ;
struct kqworkloop {struct kqrequest kqwl_request; struct kqueue kqwl_kqueue; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ kq_index_t ;

/* Variables and functions */
 int KQWL_UTQ_PARKING ; 
 int KQ_PROCESSING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC4 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqworkloop*) ; 
 scalar_t__ FUNC8 (struct kqworkloop*) ; 
 scalar_t__ FUNC9 (struct kqworkloop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct kqworkloop*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void
FUNC12(proc_t p, struct kqworkloop *kqwl)
{
	struct kqueue *kq = &kqwl->kqwl_kqueue;
	struct kqrequest *kqr = &kqwl->kqwl_request;
	thread_t thread = kqr->kqr_thread;
	int op = KQWL_UTQ_PARKING;
	kq_index_t ipc_override, qos_override = THREAD_QOS_UNSPECIFIED;

	FUNC1(thread == FUNC2());

	FUNC5(kqwl);

	/*
	 * Forcing the KQ_PROCESSING flag allows for QoS updates because of
	 * unsuppressing knotes not to be applied until the eventual call to
	 * kqworkloop_update_threads_qos() below.
	 */
	FUNC1((kq->kq_state & KQ_PROCESSING) == 0);
	if (!FUNC0(&kqr->kqr_suppressed)) {
		kq->kq_state |= KQ_PROCESSING;
		qos_override = FUNC8(kqwl);
		kq->kq_state &= ~KQ_PROCESSING;
	}

	FUNC3(kqwl);

	ipc_override = FUNC9(kqwl, thread);
	FUNC10(kqwl, op, qos_override);

	FUNC4(kqwl);

	FUNC7(kqwl);

	/*
	 * Drop the override on the current thread last, after the call to
	 * kqworkloop_update_threads_qos above.
	 */
	if (ipc_override) {
		FUNC11(thread);
	}

	/* If last reference, dealloc the workloop kq */
	FUNC6(p, kqwl);
}