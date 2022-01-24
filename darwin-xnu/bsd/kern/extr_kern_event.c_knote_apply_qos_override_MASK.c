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
struct knote {int kn_status; void* kn_qos_index; void* kn_qos_override; } ;
typedef  void* kq_index_t ;

/* Variables and functions */
 int KN_QUEUED ; 
 int KN_SUPPRESSED ; 
 int KQ_WORKQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct kqueue* FUNC1 (struct knote*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqworkloop*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqworkq*,struct knote*,void*) ; 

__attribute__((used)) static void
FUNC4(struct knote *kn, kq_index_t qos_index)
{
	FUNC0((kn->kn_status & KN_QUEUED) == 0);

	kn->kn_qos_override = qos_index;

	if (kn->kn_status & KN_SUPPRESSED) {
		struct kqueue *kq = FUNC1(kn);
		/*
		 * For suppressed events, the kn_qos_index field cannot be touched as it
		 * allows us to know on which supress queue the knote is for a kqworkq.
		 *
		 * Also, there's no natural push applied on the kqueues when this field
		 * changes anyway. We hence need to apply manual overrides in this case,
		 * which will be cleared when the events are later acknowledged.
		 */
		if (kq->kq_state & KQ_WORKQ) {
			FUNC3((struct kqworkq *)kq, kn, qos_index);
		} else {
			FUNC2((struct kqworkloop *)kq, qos_index);
		}
	} else {
		kn->kn_qos_index = qos_index;
	}
}