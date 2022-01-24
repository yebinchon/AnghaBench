#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mach_voucher_attr_raw_recipe_array_t ;
typedef  int mach_msg_option_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_voucher_t ;
typedef  int /*<<< orphan*/  ipc_voucher_attr_recipe_data_t ;
typedef  int ipc_voucher_attr_raw_recipe_array_size_t ;
typedef  TYPE_2__* ipc_kmsg_t ;
struct TYPE_9__ {scalar_t__ ip_kobject; } ;
struct TYPE_8__ {TYPE_4__* ikm_voucher; TYPE_1__* ikm_header; } ;
struct TYPE_7__ {int msgh_bits; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  IVAM_FLAGS_SUPPORT_RECEIVE_POSTPROCESS ; 
 scalar_t__ KERN_SUCCESS ; 
 int MACH_MSG_TYPE_MOVE_SEND ; 
 int MACH_RCV_VOUCHER ; 
 int /*<<< orphan*/  MACH_VOUCHER_ATTR_AUTO_REDEEM ; 
 int MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ kernel_task ; 

void
FUNC7(
	ipc_kmsg_t		kmsg,
	mach_msg_option_t	option)
{
	uint8_t recipes[(MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN + 1) * sizeof(ipc_voucher_attr_recipe_data_t)];
	ipc_voucher_attr_raw_recipe_array_size_t recipe_size = (MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN + 1) * 
						sizeof(ipc_voucher_attr_recipe_data_t);
	ipc_voucher_t recv_voucher;
	ipc_voucher_t sent_voucher;
	kern_return_t kr;
	int need_postprocessing = FALSE;

	if ((option & MACH_RCV_VOUCHER) == 0 || (!FUNC0(kmsg->ikm_voucher)) ||
	     FUNC3() == kernel_task) {
		return;
	}

	/* setup recipe for auto redeem of all the attributes. */
	sent_voucher = (ipc_voucher_t)kmsg->ikm_voucher->ip_kobject;

	kr = FUNC6(sent_voucher,
		(mach_voucher_attr_raw_recipe_array_t)recipes,
		&recipe_size, MACH_VOUCHER_ATTR_AUTO_REDEEM,
		IVAM_FLAGS_SUPPORT_RECEIVE_POSTPROCESS, &need_postprocessing);

	FUNC1(KERN_SUCCESS == kr);

	/*
	 * Only do receive postprocessing if the voucher needs any post processing.
	 */
	if (need_postprocessing) {
		kr = FUNC4(recipes,
					     recipe_size,
					     &recv_voucher);
		FUNC1(KERN_SUCCESS == kr);
		/* swap the voucher port (and set voucher bits in case it didn't already exist) */
		kmsg->ikm_header->msgh_bits |= (MACH_MSG_TYPE_MOVE_SEND << 16);
		FUNC5(kmsg->ikm_voucher);
		kmsg->ikm_voucher = FUNC2(recv_voucher);
	}
}