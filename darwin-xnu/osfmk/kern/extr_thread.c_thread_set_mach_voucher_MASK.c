#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct thread_group {int dummy; } ;
typedef  int /*<<< orphan*/ * ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_voucher_t ;
struct TYPE_9__ {scalar_t__ ith_voucher_name; scalar_t__ ith_voucher; scalar_t__ started; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_MACH_IPC ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,uintptr_t,uintptr_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  MACH_THREAD_SET_VOUCHER ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ **,struct thread_group**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

kern_return_t 
FUNC11(
	thread_t		thread,
	ipc_voucher_t		voucher)
{
	ipc_voucher_t old_voucher;
	ledger_t bankledger = NULL;
	struct thread_group *banktg = NULL;

	if (THREAD_NULL == thread)
		return KERN_INVALID_ARGUMENT;

	if (thread != FUNC5() && thread->started)
		return KERN_INVALID_ARGUMENT;

	FUNC6(voucher);
	FUNC3(voucher, &bankledger, &banktg);

	FUNC8(thread);
	old_voucher = thread->ith_voucher;
	thread->ith_voucher = voucher;
	thread->ith_voucher_name = MACH_PORT_NULL;
	FUNC9(thread);

	FUNC4(thread, bankledger);

	FUNC0(KDEBUG_TRACE,
				  FUNC1(DBG_MACH_IPC,MACH_THREAD_SET_VOUCHER) | DBG_FUNC_NONE,
				  (uintptr_t)FUNC10(thread),
				  (uintptr_t)MACH_PORT_NULL,
				  FUNC2((uintptr_t)voucher),
				  3, 0);

	FUNC7(old_voucher);

	return KERN_SUCCESS;
}