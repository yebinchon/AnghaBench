#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct thread_group {int dummy; } ;
typedef  scalar_t__ mach_port_name_t ;
typedef  int /*<<< orphan*/ * ledger_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_voucher_t ;
struct TYPE_7__ {scalar_t__ ith_voucher; scalar_t__ ith_voucher_name; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_MACH_IPC ; 
 scalar_t__ IPC_VOUCHER_NULL ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,uintptr_t,uintptr_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_RIGHT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_PORT_DEAD ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  MACH_THREAD_SET_VOUCHER ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ **,struct thread_group**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 

kern_return_t
FUNC12(mach_port_name_t voucher_name)
{
	thread_t thread = FUNC7();
	ipc_voucher_t new_voucher = IPC_VOUCHER_NULL;
	ipc_voucher_t voucher;
	ledger_t bankledger = NULL;
	struct thread_group *banktg = NULL;

	if (MACH_PORT_DEAD == voucher_name)
		return KERN_INVALID_RIGHT;

	/*
	 * agressively convert to voucher reference
	 */
	if (FUNC2(voucher_name)) {
		new_voucher = FUNC6(voucher_name);
		if (IPC_VOUCHER_NULL == new_voucher)
			return KERN_INVALID_ARGUMENT;
	}
	FUNC4(new_voucher, &bankledger, &banktg);

	FUNC9(thread);
	voucher = thread->ith_voucher;
	thread->ith_voucher_name = voucher_name;
	thread->ith_voucher = new_voucher;
	FUNC10(thread);

	FUNC5(thread, bankledger);

	FUNC0(KDEBUG_TRACE,
				  FUNC1(DBG_MACH_IPC,MACH_THREAD_SET_VOUCHER) | DBG_FUNC_NONE,
				  (uintptr_t)FUNC11(thread),
				  (uintptr_t)voucher_name,
				  FUNC3((uintptr_t)new_voucher),
				  1, 0);

	if (IPC_VOUCHER_NULL != voucher)
		FUNC8(voucher);

	return KERN_SUCCESS;
}