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
typedef  TYPE_2__* thread_t ;
struct thread_qos_override {struct thread_qos_override* override_next; } ;
struct TYPE_6__ {scalar_t__ thrp_qos_ipc_override; scalar_t__ thrp_qos_sync_ipc_override; scalar_t__ thrp_qos_override; } ;
struct TYPE_7__ {scalar_t__ ipc_overrides; scalar_t__ sync_ipc_overrides; TYPE_1__ requested_policy; struct thread_qos_override* overrides; } ;

/* Variables and functions */
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  thread_qos_override_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct thread_qos_override*) ; 

void FUNC4(thread_t thread)
{
	/* This thread must have no more IPC overrides. */
	FUNC0(thread->ipc_overrides == 0);
	FUNC0(thread->requested_policy.thrp_qos_ipc_override == THREAD_QOS_UNSPECIFIED);
	FUNC0(thread->sync_ipc_overrides == 0);
	FUNC0(thread->requested_policy.thrp_qos_sync_ipc_override == THREAD_QOS_UNSPECIFIED);

	/*
	 * Clear out any lingering override objects.
	 */
	struct thread_qos_override *override;

	FUNC1(thread);
	override = thread->overrides;
	thread->overrides = NULL;
	thread->requested_policy.thrp_qos_override = THREAD_QOS_UNSPECIFIED;
	/* We don't need to re-evaluate thread policy here because the thread has already exited */
	FUNC2(thread);

	while (override) {
		struct thread_qos_override *override_next = override->override_next;

		FUNC3(thread_qos_override_zone, override);
		override = override_next;
	}
}