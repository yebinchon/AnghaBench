#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mach_voucher_attr_recipe_t ;
typedef  int mach_voucher_attr_recipe_size_t ;
typedef  int mach_voucher_attr_raw_recipe_size_t ;
typedef  int /*<<< orphan*/ * mach_voucher_attr_raw_recipe_array_t ;
typedef  scalar_t__ mach_voucher_attr_key_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_voucher_t ;
typedef  TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_6__ {int /*<<< orphan*/  ivac_key_index; } ;
struct TYPE_5__ {int content_size; scalar_t__ previous_voucher; scalar_t__ key; int /*<<< orphan*/  content; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* IPC_VOUCHER_ATTR_CONTROL_NULL ; 
 scalar_t__ IV_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_PORT_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ivgt_keys_in_use ; 

kern_return_t
FUNC7(
	ipc_voucher_attr_control_t control,
	mach_voucher_attr_raw_recipe_array_t recipes,
	mach_voucher_attr_raw_recipe_size_t recipe_size,
	ipc_voucher_t *new_voucher)
{
	mach_voucher_attr_key_t control_key;
	mach_voucher_attr_recipe_t sub_recipe;
	mach_voucher_attr_recipe_size_t recipe_used = 0;
	ipc_voucher_t voucher = IV_NULL;
	kern_return_t kr = KERN_SUCCESS;

	if (IPC_VOUCHER_ATTR_CONTROL_NULL == control)
		return KERN_INVALID_CAPABILITY;

	/* if nothing to do ... */
	if (0 == recipe_size) {
		*new_voucher = IV_NULL;
		return KERN_SUCCESS;
	}

	/* allocate new voucher */
	voucher = FUNC3(ivgt_keys_in_use);
	if (IV_NULL == voucher)
		return KERN_RESOURCE_SHORTAGE;

	control_key = FUNC6(control->ivac_key_index);

	/* iterate over the recipe items */
	while (0 < recipe_size - recipe_used) {
		ipc_voucher_t prev_iv;

		if (recipe_size - recipe_used < sizeof(*sub_recipe)) {
			kr = KERN_INVALID_ARGUMENT;
			break;
		}

		/* find the next recipe */
		sub_recipe = (mach_voucher_attr_recipe_t)(void *)&recipes[recipe_used];
		if (recipe_size - recipe_used - sizeof(*sub_recipe) < sub_recipe->content_size) {
			kr = KERN_INVALID_ARGUMENT;
			break;
		}
		recipe_used += sizeof(*sub_recipe) + sub_recipe->content_size;

		/* convert voucher port name (current space) into a voucher reference */
		prev_iv = FUNC0(sub_recipe->previous_voucher);
		if (MACH_PORT_NULL != sub_recipe->previous_voucher && IV_NULL == prev_iv) {
			kr = KERN_INVALID_CAPABILITY;
			break;
		}

		kr = FUNC1(voucher,
							sub_recipe->key,
							sub_recipe->command,
							prev_iv,
							sub_recipe->content,
							sub_recipe->content_size,
							(sub_recipe->key == control_key));
		FUNC2(prev_iv);

		if (KERN_SUCCESS != kr)
			break;
	}

	if (KERN_SUCCESS == kr) {
		*new_voucher = FUNC5(voucher);
	} else {
		*new_voucher = IV_NULL;
		FUNC4(voucher, FALSE);
	}
	return kr;
}