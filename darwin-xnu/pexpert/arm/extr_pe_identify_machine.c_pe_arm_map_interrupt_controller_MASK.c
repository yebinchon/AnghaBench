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
typedef  scalar_t__ vm_offset_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  DTEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void**,int*) ; 
 scalar_t__ gPicBase ; 
 scalar_t__ gSocPhys ; 
 scalar_t__ gTimerBase ; 
 scalar_t__ kSuccess ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__,uintptr_t) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static uint32_t
FUNC5(void)
{
	DTEntry		entryP;
	uintptr_t	*reg_prop;
	uint32_t	prop_size;
	vm_offset_t	soc_phys = 0;

	gSocPhys = FUNC4();

	soc_phys = gSocPhys;
	FUNC2("pe_arm_map_interrupt_controller: soc_phys:  0x%lx\n", (unsigned long)soc_phys);
	if (soc_phys == 0)
		return 0;

	if (FUNC0("interrupt-controller", "master", &entryP) == kSuccess) {
		FUNC2("pe_arm_map_interrupt_controller: found interrupt-controller\n");
		FUNC1(entryP, "reg", (void **)&reg_prop, &prop_size);
		gPicBase = FUNC3(soc_phys + *reg_prop, *(reg_prop + 1));
		FUNC2("pe_arm_map_interrupt_controller: gPicBase: 0x%lx\n", (unsigned long)gPicBase);
	}
	if (gPicBase == 0) {
		FUNC2("pe_arm_map_interrupt_controller: failed to find the interrupt-controller.\n");
		return 0;
	}

	if (FUNC0("device_type", "timer", &entryP) == kSuccess) {
		FUNC2("pe_arm_map_interrupt_controller: found timer\n");
		FUNC1(entryP, "reg", (void **)&reg_prop, &prop_size);
		gTimerBase = FUNC3(soc_phys + *reg_prop, *(reg_prop + 1));
		FUNC2("pe_arm_map_interrupt_controller: gTimerBase: 0x%lx\n", (unsigned long)gTimerBase);
	}
	if (gTimerBase == 0) {
		FUNC2("pe_arm_map_interrupt_controller: failed to find the timer.\n");
		return 0;
	}

	return 1;
}