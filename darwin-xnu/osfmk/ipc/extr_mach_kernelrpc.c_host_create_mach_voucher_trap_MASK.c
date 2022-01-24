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
typedef  int /*<<< orphan*/  voucher_name ;
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct host_create_mach_voucher_args {scalar_t__ recipes_size; int /*<<< orphan*/  voucher; int /*<<< orphan*/  recipes; int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_voucher_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  scalar_t__ host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HOST_NULL ; 
 int /*<<< orphan*/  IPC_PORT_NULL ; 
 int /*<<< orphan*/  IV_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_MEMORY_ERROR ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ MACH_SEND_INVALID_DEST ; 
 scalar_t__ MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE ; 
 scalar_t__ MACH_VOUCHER_TRAP_STACK_LIMIT ; 
 scalar_t__ MIG_ARRAY_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC10(struct host_create_mach_voucher_args *args)
{
	host_t host = FUNC9(args->host);
	ipc_voucher_t new_voucher = IV_NULL;
	ipc_port_t voucher_port = IPC_PORT_NULL;
	mach_port_name_t voucher_name = 0;
	kern_return_t kr = 0;

	if (host == HOST_NULL)
		return MACH_SEND_INVALID_DEST;

	if (args->recipes_size < 0)
		return KERN_INVALID_ARGUMENT;
	else if (args->recipes_size > MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE)
		return MIG_ARRAY_TOO_LARGE;

	if (args->recipes_size < MACH_VOUCHER_TRAP_STACK_LIMIT) {
		/* keep small recipes on the stack for speed */
		uint8_t krecipes[args->recipes_size];
		if (FUNC2(FUNC0(args->recipes), (void *)krecipes, args->recipes_size)) {
			kr = KERN_MEMORY_ERROR;
			goto done;
		}
		kr = FUNC5(host, krecipes, args->recipes_size, &new_voucher);
	} else {
		uint8_t *krecipes = FUNC7((vm_size_t)args->recipes_size);
		if (!krecipes) {
			kr = KERN_RESOURCE_SHORTAGE;
			goto done;
		}

		if (FUNC2(FUNC0(args->recipes), (void *)krecipes, args->recipes_size)) {
			FUNC8(krecipes, (vm_size_t)args->recipes_size);
			kr = KERN_MEMORY_ERROR;
			goto done;
		}

		kr = FUNC5(host, krecipes, args->recipes_size, &new_voucher);
		FUNC8(krecipes, (vm_size_t)args->recipes_size);
	}

	if (kr == 0) {
		voucher_port = FUNC1(new_voucher);
		voucher_name = FUNC6(voucher_port, FUNC4());

		kr = FUNC3(&voucher_name, args->voucher, sizeof(voucher_name));
	}

done:
	return kr;
}