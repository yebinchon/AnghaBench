#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int wait_type; int /*<<< orphan*/  context; int /*<<< orphan*/  owner; int /*<<< orphan*/  waiter; } ;
typedef  TYPE_1__ thread_waitinfo_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_19__ {int block_hint; int /*<<< orphan*/  wait_event; int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
#define  kThreadWaitKernelMutex 141 
#define  kThreadWaitKernelRWLockRead 140 
#define  kThreadWaitKernelRWLockUpgrade 139 
#define  kThreadWaitKernelRWLockWrite 138 
#define  kThreadWaitOnProcess 137 
#define  kThreadWaitPThreadCondVar 136 
#define  kThreadWaitPThreadMutex 135 
#define  kThreadWaitPThreadRWLockRead 134 
#define  kThreadWaitPThreadRWLockWrite 133 
#define  kThreadWaitPortReceive 132 
#define  kThreadWaitPortSend 131 
#define  kThreadWaitSemaphore 130 
#define  kThreadWaitUserLock 129 
#define  kThreadWaitWorkloopSyncWait 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(thread_t thread, thread_waitinfo_t *waitinfo)
{
	waitinfo->waiter    = FUNC9(thread);
	waitinfo->wait_type = thread->block_hint;
	switch (waitinfo->wait_type) {
		case kThreadWaitKernelMutex:
			FUNC0(thread->waitq, thread->wait_event, waitinfo);
			break;
		case kThreadWaitPortReceive:
			FUNC1(thread->waitq, thread->wait_event, waitinfo);
			break;
		case kThreadWaitPortSend:
			FUNC2(thread->waitq, thread->wait_event, waitinfo);
			break;
		case kThreadWaitSemaphore:
			FUNC5(thread->waitq, thread->wait_event, waitinfo);
			break;
		case kThreadWaitUserLock:
			FUNC6(thread->waitq, thread->wait_event, waitinfo);
			break;
		case kThreadWaitKernelRWLockRead:
		case kThreadWaitKernelRWLockWrite:
		case kThreadWaitKernelRWLockUpgrade:
			FUNC4(thread->waitq, thread->wait_event, waitinfo);
			break;
		case kThreadWaitPThreadMutex:
		case kThreadWaitPThreadRWLockRead:
		case kThreadWaitPThreadRWLockWrite:
		case kThreadWaitPThreadCondVar:
			FUNC3(thread, waitinfo);
			break;
		case kThreadWaitWorkloopSyncWait:
			FUNC8(thread, thread->wait_event, waitinfo);
			break;
		case kThreadWaitOnProcess:
			FUNC7(thread, thread->wait_event, waitinfo);
			break;
		default:
			waitinfo->owner = 0;
			waitinfo->context = 0;
			break;
	}
}