#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ iv_index_t ;
typedef  int /*<<< orphan*/  ipc_voucher_attr_manager_t ;
typedef  TYPE_1__* ipc_voucher_attr_control_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {TYPE_1__* ivgte_control; int /*<<< orphan*/  ivgte_manager; } ;
struct TYPE_6__ {scalar_t__ ivac_key_index; } ;

/* Variables and functions */
 TYPE_1__* IVAC_NULL ; 
 int /*<<< orphan*/  IVAM_NULL ; 
 scalar_t__ MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* iv_global_table ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(iv_index_t key_index,
	    boolean_t take_reference,
	    ipc_voucher_attr_manager_t *manager,
	    ipc_voucher_attr_control_t *control)
{
	ipc_voucher_attr_control_t ivac;

	if (key_index < MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN) {
		FUNC2();
		if (NULL != manager)
			*manager = iv_global_table[key_index].ivgte_manager;
		ivac = iv_global_table[key_index].ivgte_control;
		if (IVAC_NULL != ivac) {
			FUNC0(key_index == ivac->ivac_key_index);
			if (take_reference) {
				FUNC0(NULL != control);
				FUNC1(ivac);
			}
		}
		FUNC3();
		if (NULL != control)
			*control = ivac;
	} else {
		if (NULL != manager)
			*manager = IVAM_NULL;
		if (NULL != control)
			*control = IVAC_NULL;
	}
}