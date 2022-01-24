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
struct kqrequest {scalar_t__ kqr_override_index; scalar_t__ kqr_thread; int /*<<< orphan*/  kqr_qos_index; } ;
struct knote {scalar_t__ kn_qos_index; } ;
typedef  scalar_t__ kq_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqworkq*) ; 
 struct kqrequest* FUNC3 (struct kqworkq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct kqworkq *kqwq, struct knote *kn,
		kq_index_t override_index)
{
	struct kqrequest *kqr;
	kq_index_t old_override_index;
	kq_index_t queue_index = kn->kn_qos_index;

	if (override_index <= queue_index) {
		return;
	}

	kqr = FUNC3(kqwq, queue_index);

	FUNC1(kqwq);
	old_override_index = kqr->kqr_override_index;
	if (override_index > FUNC0(kqr->kqr_qos_index, old_override_index)) {
		kqr->kqr_override_index = override_index;

		/* apply the override to [incoming?] servicing thread */
		if (kqr->kqr_thread) {
			if (old_override_index)
				FUNC5(kqr->kqr_thread, override_index);
			else
				FUNC4(kqr->kqr_thread, override_index);
		}
	}
	FUNC2(kqwq);
}