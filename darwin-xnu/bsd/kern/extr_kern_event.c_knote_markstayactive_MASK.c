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
struct knote {int kn_status; scalar_t__ kn_qos_index; scalar_t__ kn_qos_override; scalar_t__ kn_req_index; int /*<<< orphan*/  kn_qos; } ;
typedef  scalar_t__ kq_index_t ;

/* Variables and functions */
 int KN_ATTACHING ; 
 int KN_QUEUED ; 
 int KN_STAYACTIVE ; 
 int KN_SUPPRESSED ; 
 scalar_t__ KQWL_BUCKET_STAYACTIVE ; 
 int /*<<< orphan*/  KQWL_UTQ_UPDATE_STAYACTIVE_QOS ; 
 scalar_t__ KQWQ_QOS_MANAGER ; 
 int KQ_WORKLOOP ; 
 int KQ_WORKQ ; 
 scalar_t__ THREAD_QOS_LAST ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct knote*) ; 
 struct kqueue* FUNC3 (struct knote*) ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct kqworkloop*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC9(struct knote *kn)
{
	struct kqueue *kq = FUNC3(kn);
	kq_index_t qos;

	FUNC6(kq);
	kn->kn_status |= KN_STAYACTIVE;

	/*
	 * Making a knote stay active is a property of the knote that must be
	 * established before it is fully attached.
	 */
	FUNC1(kn->kn_status & KN_ATTACHING);
	FUNC1((kn->kn_status & (KN_QUEUED | KN_SUPPRESSED)) == 0);

	/* handle all stayactive knotes on the (appropriate) manager */
	if (kq->kq_state & KQ_WORKQ) {
		qos = KQWQ_QOS_MANAGER;
	} else if (kq->kq_state & KQ_WORKLOOP) {
		struct kqworkloop *kqwl = (struct kqworkloop *)kq;

		qos = FUNC0(kn->kn_qos);
		FUNC1(qos && qos < THREAD_QOS_LAST);
		FUNC4(kq);
		FUNC8(kqwl, KQWL_UTQ_UPDATE_STAYACTIVE_QOS, qos);
		FUNC5(kq);
		qos = KQWL_BUCKET_STAYACTIVE;
	} else {
		qos = THREAD_QOS_UNSPECIFIED;
	}

	kn->kn_req_index = qos;
	kn->kn_qos_override = qos;
	kn->kn_qos_index = qos;

	FUNC2(kn);
	FUNC7(kq);
}