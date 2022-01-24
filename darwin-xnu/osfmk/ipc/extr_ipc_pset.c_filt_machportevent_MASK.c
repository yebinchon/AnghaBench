#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_mqueue; } ;
struct knote {int kn_flags; TYPE_1__ kn_ptr; } ;
typedef  TYPE_2__* ipc_mqueue_t ;
typedef  int /*<<< orphan*/  ipc_kmsg_t ;
struct TYPE_7__ {int /*<<< orphan*/  imq_messages; } ;

/* Variables and functions */
 int EV_EOF ; 
 int EV_ONESHOT ; 
 int FILTER_ACTIVE ; 
 int FILTER_RESET_EVENT_QOS ; 
 int /*<<< orphan*/  IKM_NULL ; 
 long NOTE_REVOKE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct knote*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(
	struct knote *kn,
	long hint)
{
	ipc_mqueue_t mqueue = kn->kn_ptr.p_mqueue;
	ipc_kmsg_t first;
	int result = 0;

	/* mqueue locked by caller */
	FUNC0(FUNC2(mqueue));

	if (hint == NOTE_REVOKE) {
		kn->kn_flags |= EV_EOF | EV_ONESHOT;
		result = FILTER_ACTIVE | FILTER_RESET_EVENT_QOS;
	} else if (FUNC4(mqueue)) {
		FUNC0(!FUNC3(mqueue));
		if ((first = FUNC5(&mqueue->imq_messages)) != IKM_NULL) {
			result = FILTER_ACTIVE | FUNC1(kn, first);
		}
	}

	return result;
}