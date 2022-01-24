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
 int /*<<< orphan*/  FUNC0 () ; 
 int AF80_enabled ; 
 int /*<<< orphan*/ * AF80_palette ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * af80_attrib ; 
 int /*<<< orphan*/ * af80_charset ; 
 int /*<<< orphan*/  af80_charset_filename ; 
 int /*<<< orphan*/ * af80_rom ; 
 int /*<<< orphan*/  af80_rom_filename ; 
 int /*<<< orphan*/ * af80_screen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rgbi_palette ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int *argc, char *argv[])
{
	int i, j;
	int help_only = FALSE;
	for (i = j = 1; i < *argc; i++) {
		if (FUNC5(argv[i], "-af80") == 0) {
			AF80_enabled = TRUE;
		}
		else {
		 	if (FUNC5(argv[i], "-help") == 0) {
		 		help_only = TRUE;
				FUNC2("\t-af80            Emulate the Austin Franklin 80 column board");
			}
			argv[j++] = argv[i];
		}
	}
	*argc = j;

	if (help_only)
		return TRUE;

	if (AF80_enabled) {
		FUNC2("Austin Franklin 80 enabled");
		af80_rom = (UBYTE *)FUNC3(0x1000);
		if (!FUNC1(af80_rom_filename, af80_rom, 0x1000)) {
			FUNC4(af80_rom);
			af80_rom = NULL;
			AF80_enabled = FALSE;
			FUNC2("Couldn't load Austin Franklin ROM image");
			return FALSE;
		}
		else {
			FUNC2("loaded Austin Franklin rom image");
		}
		af80_charset = (UBYTE *)FUNC3(0x1000);
		if (!FUNC1(af80_charset_filename, af80_charset, 0x1000)) {
			FUNC4(af80_charset);
			FUNC4(af80_rom);
			af80_charset = af80_rom = NULL;
			AF80_enabled = FALSE;
			FUNC2("Couldn't load Austin Franklin charset image");
			return FALSE;
		}
		else {
			FUNC2("loaded Austin Franklin charset image");
		}
		af80_screen = (UBYTE *)FUNC3(0x800);
		af80_attrib = (UBYTE *)FUNC3(0x800);
		FUNC0();

		/* swap palette */
		for (i=0; i<16; i++ ) {
			j=i;
			j = (j&0x0a) + ((j&0x01) << 2) + ((j&0x04) >> 2);
			AF80_palette[i] = rgbi_palette[j];
		}
	}

	return TRUE;
}