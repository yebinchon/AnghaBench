#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  mach_voucher_attr_content_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  ith_voucher; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_ORIGINATOR_PID ; 
 int /*<<< orphan*/  MACH_VOUCHER_ATTR_KEY_BANK ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

kern_return_t
FUNC2(
	int32_t      *pid)
{
	uint32_t buf_size;
	kern_return_t kr;
	thread_t thread = FUNC0();
	
	buf_size = sizeof(*pid);
	kr = FUNC1(thread->ith_voucher,
		MACH_VOUCHER_ATTR_KEY_BANK,
		BANK_ORIGINATOR_PID,
		NULL,
		0,
		(mach_voucher_attr_content_t)pid,
		&buf_size);

	return kr;
}