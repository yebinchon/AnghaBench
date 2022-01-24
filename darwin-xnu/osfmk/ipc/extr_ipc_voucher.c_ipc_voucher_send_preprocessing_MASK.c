#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mach_voucher_attr_raw_recipe_array_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_voucher_t ;
typedef  int /*<<< orphan*/  ipc_voucher_attr_recipe_data_t ;
typedef  int ipc_voucher_attr_raw_recipe_array_size_t ;
typedef  TYPE_1__* ipc_kmsg_t ;
struct TYPE_7__ {scalar_t__ ip_kobject; } ;
struct TYPE_6__ {TYPE_3__* ikm_voucher; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IVAM_FLAGS_SUPPORT_SEND_PREPROCESS ; 
 scalar_t__ KERN_SUCCESS ; 
 int MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ; 
 int /*<<< orphan*/  MACH_VOUCHER_ATTR_SEND_PREPROCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ kernel_task ; 

void
FUNC7(ipc_kmsg_t kmsg)
{
	uint8_t recipes[(MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN + 1) * sizeof(ipc_voucher_attr_recipe_data_t)];
	ipc_voucher_attr_raw_recipe_array_size_t recipe_size = (MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN + 1) * 
						sizeof(ipc_voucher_attr_recipe_data_t);
	ipc_voucher_t pre_processed_voucher;
	ipc_voucher_t voucher_to_send;
	kern_return_t kr;
	int need_preprocessing = FALSE;

	if (!FUNC0(kmsg->ikm_voucher) || FUNC3() == kernel_task) {
		return;
	}

	/* setup recipe for preprocessing of all the attributes. */
	pre_processed_voucher = (ipc_voucher_t)kmsg->ikm_voucher->ip_kobject;

	kr = FUNC6(pre_processed_voucher,
		(mach_voucher_attr_raw_recipe_array_t)recipes,
		&recipe_size, MACH_VOUCHER_ATTR_SEND_PREPROCESS,
		IVAM_FLAGS_SUPPORT_SEND_PREPROCESS, &need_preprocessing);

	FUNC1(KERN_SUCCESS == kr);
	/*
	 * Only do send preprocessing if the voucher needs any pre processing.
	 */
	if (need_preprocessing) {
		kr = FUNC4(recipes,
					     recipe_size,
					     &voucher_to_send);
		FUNC1(KERN_SUCCESS == kr);
		FUNC5(kmsg->ikm_voucher);
		kmsg->ikm_voucher = FUNC2(voucher_to_send);
	}
}