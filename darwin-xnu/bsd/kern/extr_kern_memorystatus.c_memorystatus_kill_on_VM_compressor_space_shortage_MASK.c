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
typedef  scalar_t__ os_reason_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  JETSAM_REASON_MEMORY_VMCOMPRESSOR_SPACE_SHORTAGE ; 
 int /*<<< orphan*/  OS_REASON_JETSAM ; 
 scalar_t__ OS_REASON_NULL ; 
 int /*<<< orphan*/  kMemorystatusKilledVMCompressorSpaceShortage ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

boolean_t
FUNC4(boolean_t async) {
	if (async) {
		return FUNC0(-1, kMemorystatusKilledVMCompressorSpaceShortage);
	} else {
		os_reason_t jetsam_reason = FUNC2(OS_REASON_JETSAM, JETSAM_REASON_MEMORY_VMCOMPRESSOR_SPACE_SHORTAGE);
		if (jetsam_reason == OS_REASON_NULL) {
			FUNC3("memorystatus_kill_on_VM_compressor_space_shortage -- sync: failed to allocate jetsam reason\n");
		}

		return FUNC1(-1, kMemorystatusKilledVMCompressorSpaceShortage, jetsam_reason);
	}
}