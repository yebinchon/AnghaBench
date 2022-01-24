#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct task_requested_policy {int trp_ext_darwinbg; int trp_int_darwinbg; int trp_ext_iotier; int trp_ext_iopassive; int trp_int_iotier; int trp_int_iopassive; int trp_bg_iotier; int trp_role; int trp_sfi_managed; } ;
struct TYPE_5__ {struct task_requested_policy requested_policy; } ;

/* Variables and functions */
 int TASK_POLICY_ATTRIBUTE ; 
#define  TASK_POLICY_DARWIN_BG 134 
#define  TASK_POLICY_DARWIN_BG_IOPOL 133 
 int TASK_POLICY_EXTERNAL ; 
#define  TASK_POLICY_IO 132 
#define  TASK_POLICY_IOPOL 131 
#define  TASK_POLICY_PASSIVE_IO 130 
#define  TASK_POLICY_ROLE 129 
#define  TASK_POLICY_SFI_MANAGED 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(task_t     task,
                     int        category,
                     int        flavor)
{
	int value = 0;

	FUNC3(task);

	struct task_requested_policy requested = task->requested_policy;

	switch (flavor) {
		case TASK_POLICY_DARWIN_BG:
			if (category == TASK_POLICY_EXTERNAL)
				value = requested.trp_ext_darwinbg;
			else
				value = requested.trp_int_darwinbg;
			break;
		case TASK_POLICY_IOPOL:
			if (category == TASK_POLICY_EXTERNAL)
				value = FUNC2(requested.trp_ext_iotier,
				                           requested.trp_ext_iopassive);
			else
				value = FUNC2(requested.trp_int_iotier,
				                           requested.trp_int_iopassive);
			break;
		case TASK_POLICY_IO:
			if (category == TASK_POLICY_EXTERNAL)
				value = requested.trp_ext_iotier;
			else
				value = requested.trp_int_iotier;
			break;
		case TASK_POLICY_PASSIVE_IO:
			if (category == TASK_POLICY_EXTERNAL)
				value = requested.trp_ext_iopassive;
			else
				value = requested.trp_int_iopassive;
			break;
		case TASK_POLICY_DARWIN_BG_IOPOL:
			FUNC0(category == TASK_POLICY_ATTRIBUTE);
			value = FUNC2(requested.trp_bg_iotier, 0);
			break;
		case TASK_POLICY_ROLE:
			FUNC0(category == TASK_POLICY_ATTRIBUTE);
			value = requested.trp_role;
			break;
		case TASK_POLICY_SFI_MANAGED:
			FUNC0(category == TASK_POLICY_ATTRIBUTE);
			value = requested.trp_sfi_managed;
			break;
		default:
			FUNC1("unknown policy_flavor %d", flavor);
			break;
	}

	FUNC4(task);

	return value;
}