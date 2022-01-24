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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  cpu_boot_arg ;
typedef  int /*<<< orphan*/  OpaqueDTEntryIterator ;
typedef  int /*<<< orphan*/  DTEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,void**,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ avail_cpus ; 
 int kSuccess ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char*,char*,unsigned int) ; 

void
FUNC8(void)
{
	DTEntry entry, child;
	OpaqueDTEntryIterator iter;
	uint32_t cpu_boot_arg;
	int err;

	err = FUNC3(NULL, "/cpus", &entry);
	FUNC5(err == kSuccess);

	err = FUNC1(entry, &iter);
	FUNC5(err == kSuccess);

	while (kSuccess == FUNC2(&iter, &child)) {

#if MACH_ASSERT
		unsigned int propSize;
		void *prop = NULL;
		if (avail_cpus == 0) {
			if (kSuccess != DTGetProperty(child, "state", &prop, &propSize))
				panic("unable to retrieve state for cpu %u", avail_cpus);

			if (strncmp((char*)prop, "running", propSize) != 0)
				panic("cpu 0 has not been marked as running!");
		}
		assert(kSuccess == DTGetProperty(child, "reg", &prop, &propSize));
		assert(avail_cpus == *((uint32_t*)prop));
#endif
		++avail_cpus;
	}

	cpu_boot_arg = avail_cpus;
	if (FUNC4("cpus", &cpu_boot_arg, sizeof(cpu_boot_arg)) &&
	    (avail_cpus > cpu_boot_arg))
		avail_cpus = cpu_boot_arg;

	if (avail_cpus == 0)
		FUNC6("No cpus found!");
}