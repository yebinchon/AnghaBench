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
struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; } ;
struct knote {int kn_status; int kn_qos; scalar_t__ kn_qos_override; scalar_t__ kn_qos_index; scalar_t__ kn_req_index; } ;
typedef  int pthread_priority_t ;
typedef  scalar_t__ kq_index_t ;

/* Variables and functions */
 int KN_MERGE_QOS ; 
 int KN_QUEUED ; 
 int KN_SUPPRESSED ; 
 scalar_t__ KQWQ_QOS_MANAGER ; 
 int KQ_WORKLOOP ; 
 int KQ_WORKQ ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct kqueue* FUNC4 (struct knote*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqworkloop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct kqworkq*,struct knote*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct knote *kn, pthread_priority_t pp)
{
	struct kqueue *kq = FUNC4(kn);
	kq_index_t qos = FUNC1(pp);

	FUNC3((kn->kn_status & KN_QUEUED) == 0);

	if (kq->kq_state & KQ_WORKQ) {
		if (qos == THREAD_QOS_UNSPECIFIED) {
			/* On workqueues, outside of QoS means MANAGER */
			qos = KQWQ_QOS_MANAGER;
			pp = _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG;
		} else {
			pp = FUNC0(pp);
		}
	} else if (kq->kq_state & KQ_WORKLOOP) {
		FUNC3((pp & _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG) == 0);
		pp = FUNC0(pp);
	} else {
		pp = FUNC2();
		qos = THREAD_QOS_UNSPECIFIED;
	}

	kn->kn_qos = pp;
	kn->kn_req_index = qos;

	if ((kn->kn_status & KN_MERGE_QOS) == 0 || qos > kn->kn_qos_override) {
		/* Never lower QoS when in "Merge" mode */
		kn->kn_qos_override = qos;
	}

	/* only adjust in-use qos index when not suppressed */
	if ((kn->kn_status & KN_SUPPRESSED) == 0) {
		kn->kn_qos_index = qos;
	} else if (kq->kq_state & KQ_WORKQ) {
		FUNC6((struct kqworkq *)kq, kn, qos);
	} else if (kq->kq_state & KQ_WORKLOOP) {
		FUNC5((struct kqworkloop *)kq, qos);
	}
}