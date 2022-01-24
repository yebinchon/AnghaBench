#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  size_t uint32_t ;
struct cpu_data {TYPE_4__* cpu_user_debug; } ;
typedef  int /*<<< orphan*/  off_state ;
typedef  int boolean_t ;
struct TYPE_10__ {scalar_t__* bcr; scalar_t__* wcr; int mdscr_el1; int /*<<< orphan*/ * wvr; int /*<<< orphan*/ * bvr; } ;
struct TYPE_11__ {TYPE_1__ ds32; } ;
struct TYPE_13__ {TYPE_2__ uds; } ;
typedef  TYPE_4__ arm_debug_state_t ;
struct TYPE_14__ {int num_breakpoint_pairs; int num_watchpoint_pairs; } ;
typedef  TYPE_5__ arm_debug_info_t ;
struct TYPE_12__ {int /*<<< orphan*/  upcb; } ;
struct TYPE_15__ {TYPE_3__ machine; } ;

/* Variables and functions */
 int ARM_DBG_CR_HIGHER_MODE_ENABLE ; 
 int ARM_DBG_CR_MODE_CONTROL_PRIVILEGED ; 
 int FALSE ; 
 int /*<<< orphan*/  ISB_SY ; 
 int PSR64_SS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 TYPE_6__* FUNC7 () ; 
 struct cpu_data* FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

void FUNC14(arm_debug_state_t *debug_state)
{
	struct cpu_data 	*cpu_data_ptr;
	arm_debug_info_t 	*debug_info = FUNC5();
	boolean_t       	intr, set_mde = 0;
	arm_debug_state_t 	off_state;
	uint32_t 			i;
	uint64_t		all_ctrls = 0;

	intr = FUNC10(FALSE);
	cpu_data_ptr = FUNC8();

	// Set current user debug
	cpu_data_ptr->cpu_user_debug = debug_state;

	if (NULL == debug_state) {
		FUNC6(&off_state, sizeof(off_state));
		debug_state = &off_state;
	}

	switch (debug_info->num_breakpoint_pairs) {
	case 16:
		FUNC1(15, (uint64_t)debug_state->uds.ds32.bvr[15]);
		FUNC0(15, (uint64_t)debug_state->uds.ds32.bcr[15], all_ctrls);
	case 15:
		FUNC1(14, (uint64_t)debug_state->uds.ds32.bvr[14]);
		FUNC0(14, (uint64_t)debug_state->uds.ds32.bcr[14], all_ctrls);
	case 14:
		FUNC1(13, (uint64_t)debug_state->uds.ds32.bvr[13]);
		FUNC0(13, (uint64_t)debug_state->uds.ds32.bcr[13], all_ctrls);
	case 13:
		FUNC1(12, (uint64_t)debug_state->uds.ds32.bvr[12]);
		FUNC0(12, (uint64_t)debug_state->uds.ds32.bcr[12], all_ctrls);
	case 12:
		FUNC1(11, (uint64_t)debug_state->uds.ds32.bvr[11]);
		FUNC0(11, (uint64_t)debug_state->uds.ds32.bcr[11], all_ctrls);
	case 11:
		FUNC1(10, (uint64_t)debug_state->uds.ds32.bvr[10]);
		FUNC0(10, (uint64_t)debug_state->uds.ds32.bcr[10], all_ctrls);
	case 10:
		FUNC1(9, (uint64_t)debug_state->uds.ds32.bvr[9]);
		FUNC0(9, (uint64_t)debug_state->uds.ds32.bcr[9], all_ctrls);
	case 9:
		FUNC1(8, (uint64_t)debug_state->uds.ds32.bvr[8]);
		FUNC0(8, (uint64_t)debug_state->uds.ds32.bcr[8], all_ctrls);
	case 8:
		FUNC1(7, (uint64_t)debug_state->uds.ds32.bvr[7]);
		FUNC0(7, (uint64_t)debug_state->uds.ds32.bcr[7], all_ctrls);
	case 7:
		FUNC1(6, (uint64_t)debug_state->uds.ds32.bvr[6]);
		FUNC0(6, (uint64_t)debug_state->uds.ds32.bcr[6], all_ctrls);
	case 6:
		FUNC1(5, (uint64_t)debug_state->uds.ds32.bvr[5]);
		FUNC0(5, (uint64_t)debug_state->uds.ds32.bcr[5], all_ctrls);
	case 5:
		FUNC1(4, (uint64_t)debug_state->uds.ds32.bvr[4]);
		FUNC0(4, (uint64_t)debug_state->uds.ds32.bcr[4], all_ctrls);
	case 4:
		FUNC1(3, (uint64_t)debug_state->uds.ds32.bvr[3]);
		FUNC0(3, (uint64_t)debug_state->uds.ds32.bcr[3], all_ctrls);
	case 3:
		FUNC1(2, (uint64_t)debug_state->uds.ds32.bvr[2]);
		FUNC0(2, (uint64_t)debug_state->uds.ds32.bcr[2], all_ctrls);
	case 2:
		FUNC1(1, (uint64_t)debug_state->uds.ds32.bvr[1]);
		FUNC0(1, (uint64_t)debug_state->uds.ds32.bcr[1], all_ctrls);
	case 1:
		FUNC1(0, (uint64_t)debug_state->uds.ds32.bvr[0]);
		FUNC0(0, (uint64_t)debug_state->uds.ds32.bcr[0], all_ctrls);
	default:
		break;
	}

	switch (debug_info->num_watchpoint_pairs) {
	case 16:
		FUNC3(15, (uint64_t)debug_state->uds.ds32.wvr[15]);
		FUNC2(15, (uint64_t)debug_state->uds.ds32.wcr[15], all_ctrls);
	case 15:
		FUNC3(14, (uint64_t)debug_state->uds.ds32.wvr[14]);
		FUNC2(14, (uint64_t)debug_state->uds.ds32.wcr[14], all_ctrls);
	case 14:
		FUNC3(13, (uint64_t)debug_state->uds.ds32.wvr[13]);
		FUNC2(13, (uint64_t)debug_state->uds.ds32.wcr[13], all_ctrls);
	case 13:
		FUNC3(12, (uint64_t)debug_state->uds.ds32.wvr[12]);
		FUNC2(12, (uint64_t)debug_state->uds.ds32.wcr[12], all_ctrls);
	case 12:
		FUNC3(11, (uint64_t)debug_state->uds.ds32.wvr[11]);
		FUNC2(11, (uint64_t)debug_state->uds.ds32.wcr[11], all_ctrls);
	case 11:
		FUNC3(10, (uint64_t)debug_state->uds.ds32.wvr[10]);
		FUNC2(10, (uint64_t)debug_state->uds.ds32.wcr[10], all_ctrls);
	case 10:
		FUNC3(9, (uint64_t)debug_state->uds.ds32.wvr[9]);
		FUNC2(9, (uint64_t)debug_state->uds.ds32.wcr[9], all_ctrls);
	case 9:
		FUNC3(8, (uint64_t)debug_state->uds.ds32.wvr[8]);
		FUNC2(8, (uint64_t)debug_state->uds.ds32.wcr[8], all_ctrls);
	case 8:
		FUNC3(7, (uint64_t)debug_state->uds.ds32.wvr[7]);
		FUNC2(7, (uint64_t)debug_state->uds.ds32.wcr[7], all_ctrls);
	case 7:
		FUNC3(6, (uint64_t)debug_state->uds.ds32.wvr[6]);
		FUNC2(6, (uint64_t)debug_state->uds.ds32.wcr[6], all_ctrls);
	case 6:
		FUNC3(5, (uint64_t)debug_state->uds.ds32.wvr[5]);
		FUNC2(5, (uint64_t)debug_state->uds.ds32.wcr[5], all_ctrls);
	case 5:
		FUNC3(4, (uint64_t)debug_state->uds.ds32.wvr[4]);
		FUNC2(4, (uint64_t)debug_state->uds.ds32.wcr[4], all_ctrls);
	case 4:
		FUNC3(3, (uint64_t)debug_state->uds.ds32.wvr[3]);
		FUNC2(3, (uint64_t)debug_state->uds.ds32.wcr[3], all_ctrls);
	case 3:
		FUNC3(2, (uint64_t)debug_state->uds.ds32.wvr[2]);
		FUNC2(2, (uint64_t)debug_state->uds.ds32.wcr[2], all_ctrls);
	case 2:
		FUNC3(1, (uint64_t)debug_state->uds.ds32.wvr[1]);
		FUNC2(1, (uint64_t)debug_state->uds.ds32.wcr[1], all_ctrls);
	case 1:
		FUNC3(0, (uint64_t)debug_state->uds.ds32.wvr[0]);
		FUNC2(0, (uint64_t)debug_state->uds.ds32.wcr[0], all_ctrls);
	default:
		break;
	}

#if defined(CONFIG_KERNEL_INTEGRITY)
	if ((all_ctrls & (ARM_DBG_CR_MODE_CONTROL_PRIVILEGED | ARM_DBG_CR_HIGHER_MODE_ENABLE)) != 0) {
		panic("sorry, self-hosted debug is not supported: 0x%llx", all_ctrls);
	}
#endif

	for (i = 0; i < debug_info->num_breakpoint_pairs; i++) {
		if (0 != debug_state->uds.ds32.bcr[i]) {
			set_mde = 1;
			break;
		}
	}

	for (i = 0; i < debug_info->num_watchpoint_pairs; i++) {
		if (0 != debug_state->uds.ds32.wcr[i]) {
			set_mde = 1;
			break;
		}
	}

	/*
	 * Breakpoint/Watchpoint Enable
	 */
	if (set_mde) {
		FUNC13(0, 0x8000); // MDSCR_EL1[MDE]
	} else {
		FUNC13(0x8000, 0);
	}
		
	/*
	 * Software debug single step enable
	 */
	if (debug_state->uds.ds32.mdscr_el1 & 0x1) {
		FUNC13(0x8000, 1); // ~MDE | SS : no brk/watch while single stepping (which we've set)

		FUNC12((FUNC7()->machine.upcb), 
			FUNC9((FUNC7()->machine.upcb)) | PSR64_SS);

	} else {

		FUNC13(0x1, 0);

#if SINGLE_STEP_RETIRE_ERRATA
		// Workaround for radar 20619637
		__builtin_arm_isb(ISB_SY);
#endif
	}

	(void) FUNC10(intr);

	return;
}