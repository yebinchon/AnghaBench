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
typedef  char* uint64_t ;
typedef  int /*<<< orphan*/  DTEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,void**,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ kSuccess ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char const* tsc_at_boot ; 

__attribute__((used)) static uint64_t
FUNC3(const char *prop)
{
	uint64_t	frequency = 0;
	DTEntry		entry;
	void		*value;
	unsigned int	size;

	if (FUNC1(0, "/efi/platform", &entry) != kSuccess) {
		FUNC2("EFI_get_frequency: didn't find /efi/platform\n");
		return 0;
	}
	if (FUNC0(entry,prop,&value,&size) != kSuccess) {
		FUNC2("EFI_get_frequency: property %s not found\n", prop);
		return 0;
	}
	if (size == sizeof(uint64_t)) {
		frequency = *(uint64_t *) value;
		FUNC2("EFI_get_frequency: read %s value: %llu\n",
			prop, frequency);
	}

	/*
	 * While we're here, see if EFI published an initial TSC value.
	 */
	if (FUNC0(entry,"InitialTSC",&value,&size) == kSuccess) {
		if (size == sizeof(uint64_t)) {
			tsc_at_boot = *(uint64_t *) value;
			FUNC2("EFI_get_frequency: read InitialTSC: %llu\n",
				tsc_at_boot);
		}
	}

	return frequency;
}