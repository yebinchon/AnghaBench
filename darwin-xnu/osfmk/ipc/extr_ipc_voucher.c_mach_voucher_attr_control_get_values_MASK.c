#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_voucher_attr_value_handle_array_t ;
typedef  scalar_t__ mach_voucher_attr_value_handle_array_size_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  iv_index_t ;
typedef  TYPE_1__* ipc_voucher_t ;
typedef  TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_9__ {int /*<<< orphan*/  ivac_key_index; } ;
struct TYPE_8__ {int /*<<< orphan*/  iv_refs; } ;

/* Variables and functions */
 TYPE_2__* IPC_VOUCHER_ATTR_CONTROL_NULL ; 
 TYPE_1__* IV_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_CAPABILITY ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC4(
	ipc_voucher_attr_control_t control,
	ipc_voucher_t voucher,
	mach_voucher_attr_value_handle_array_t out_values,
	mach_voucher_attr_value_handle_array_size_t *in_out_size)
{
	iv_index_t key_index, value_index;

	if (IPC_VOUCHER_ATTR_CONTROL_NULL == control)
		return KERN_INVALID_CAPABILITY;

	if (IV_NULL == voucher)
		return KERN_INVALID_ARGUMENT;

	if (0 == *in_out_size)
		return KERN_SUCCESS;

	key_index = control->ivac_key_index;

	FUNC0(FUNC3(&voucher->iv_refs) > 0);
	value_index = FUNC1(voucher, key_index);
	FUNC2(key_index, value_index,
			    out_values, in_out_size);
	return KERN_SUCCESS;
}