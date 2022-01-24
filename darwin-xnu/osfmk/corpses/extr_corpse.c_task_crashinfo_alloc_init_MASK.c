#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  TYPE_1__* kcdata_descriptor_t ;
struct TYPE_4__ {int kcd_user_flags; } ;

/* Variables and functions */
 int CORPSE_CRASHINFO_HAS_REF ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TASK_CRASHINFO_BEGIN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

kcdata_descriptor_t
FUNC3(mach_vm_address_t crash_data_p, unsigned size,
		uint32_t kc_u_flags, unsigned kc_flags)
{
	kcdata_descriptor_t kcdata;

	if (kc_u_flags & CORPSE_CRASHINFO_HAS_REF) {
		if (KERN_SUCCESS != FUNC1(kc_u_flags)) {
			return NULL;
		}
	}

	kcdata = FUNC0(crash_data_p, TASK_CRASHINFO_BEGIN, size,
			kc_flags);
	if (kcdata) {
		kcdata->kcd_user_flags = kc_u_flags;
	} else if (kc_u_flags & CORPSE_CRASHINFO_HAS_REF) {
		FUNC2(kc_u_flags);
	}
	return kcdata;
}