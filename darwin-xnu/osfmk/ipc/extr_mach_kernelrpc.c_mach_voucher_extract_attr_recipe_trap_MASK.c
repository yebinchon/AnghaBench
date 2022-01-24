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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  sz ;
struct mach_voucher_extract_attr_recipe_args {int /*<<< orphan*/  recipe_size; int /*<<< orphan*/  recipe; int /*<<< orphan*/  key; int /*<<< orphan*/  voucher_name; } ;
typedef  int /*<<< orphan*/  mach_voucher_attr_raw_recipe_t ;
typedef  scalar_t__ mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_voucher_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IV_NULL ; 
 scalar_t__ KERN_MEMORY_ERROR ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_SEND_INVALID_DEST ; 
 scalar_t__ MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE ; 
 scalar_t__ MACH_VOUCHER_TRAP_STACK_LIMIT ; 
 scalar_t__ MIG_ARRAY_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

kern_return_t
FUNC9(struct mach_voucher_extract_attr_recipe_args *args)
{
	ipc_voucher_t voucher = IV_NULL;
	kern_return_t kr = KERN_SUCCESS;
	mach_msg_type_number_t sz = 0;

	if (FUNC3(args->recipe_size, (void *)&sz, sizeof(sz)))
		return KERN_MEMORY_ERROR;

	if (sz > MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE)
		return MIG_ARRAY_TOO_LARGE;

	voucher = FUNC2(args->voucher_name);
	if (voucher == IV_NULL)
		return MACH_SEND_INVALID_DEST;

	mach_msg_type_number_t max_sz = sz;

	if (sz < MACH_VOUCHER_TRAP_STACK_LIMIT) {
		/* keep small recipes on the stack for speed */
		uint8_t krecipe[sz];
		if (FUNC3(FUNC0(args->recipe), (void *)krecipe, sz)) {
			kr = KERN_MEMORY_ERROR;
			goto done;
		}
		kr = FUNC8(voucher, args->key,
		                                      (mach_voucher_attr_raw_recipe_t)krecipe, &sz);
		FUNC1(sz <= max_sz);

		if (kr == KERN_SUCCESS && sz > 0)
			kr = FUNC4(krecipe, FUNC0(args->recipe), sz);
	} else {
		uint8_t *krecipe = FUNC6((vm_size_t)max_sz);
		if (!krecipe) {
			kr = KERN_RESOURCE_SHORTAGE;
			goto done;
		}

		if (FUNC3(FUNC0(args->recipe), (void *)krecipe, sz)) {
			FUNC7(krecipe, (vm_size_t)max_sz);
			kr = KERN_MEMORY_ERROR;
			goto done;
		}

		kr = FUNC8(voucher, args->key,
		                                      (mach_voucher_attr_raw_recipe_t)krecipe, &sz);
		FUNC1(sz <= max_sz);

		if (kr == KERN_SUCCESS && sz > 0)
			kr = FUNC4(krecipe, FUNC0(args->recipe), sz);
		FUNC7(krecipe, (vm_size_t)max_sz);
	}

	if (kr == KERN_SUCCESS)
		kr = FUNC4(&sz, args->recipe_size, sizeof(sz));

done:
	FUNC5(voucher);
	return kr;
}