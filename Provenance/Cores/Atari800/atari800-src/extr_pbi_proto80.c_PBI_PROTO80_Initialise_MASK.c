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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PBI_D6D7ram ; 
 int PBI_PROTO80_enabled ; 
 int TRUE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proto80_rom_filename ; 
 int /*<<< orphan*/ * proto80rom ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(int *argc, char *argv[])
{
	int i, j;
	for (i = j = 1; i < *argc; i++) {
		if (FUNC4(argv[i], "-proto80") == 0) {
			FUNC1("proto80 enabled");
			PBI_PROTO80_enabled = TRUE;
		}
		else {
		 	if (FUNC4(argv[i], "-help") == 0) {
				FUNC1("\t-proto80         Emulate a prototype 80 column board for the 1090");
			}
			argv[j++] = argv[i];
		}
	}
	*argc = j;

	if (PBI_PROTO80_enabled) {
		proto80rom = (UBYTE *)FUNC2(0x800);
		if (!FUNC0(proto80_rom_filename, proto80rom, 0x800)) {
			FUNC3(proto80rom);
			PBI_PROTO80_enabled = FALSE;
			FUNC1("Couldn't load proto80 rom image");
			return FALSE;
		}
		else {
			FUNC1("loaded proto80 rom image");
			PBI_D6D7ram = TRUE;
		}
	}

	return TRUE;
}