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
typedef  scalar_t__ ipc_voucher_t ;

/* Variables and functions */
 scalar_t__ IPC_VOUCHER_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void
FUNC1(ipc_voucher_t voucher)
{
	if (IPC_VOUCHER_NULL == voucher)
		return;

	FUNC0(voucher);
}