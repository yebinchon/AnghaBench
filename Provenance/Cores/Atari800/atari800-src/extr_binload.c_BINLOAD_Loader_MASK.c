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
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ Atari800_MACHINE_5200 ; 
 scalar_t__ Atari800_machine_type ; 
 scalar_t__ BINLOAD_LOADING_BASIC_LISTED ; 
 scalar_t__ BINLOAD_LOADING_BASIC_SAVED ; 
 int /*<<< orphan*/ * BINLOAD_bin_file ; 
 scalar_t__ BINLOAD_loading_basic ; 
 int BINLOAD_start_binloading ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ SIO_NO_DISK ; 
 scalar_t__* SIO_drive_status ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int FUNC6 (int*,int,int,int /*<<< orphan*/ *) ; 

int FUNC7(const char *filename)
{
	UBYTE buf[2];
	if (BINLOAD_bin_file != NULL) {		/* close previously open file */
		FUNC4(BINLOAD_bin_file);
		BINLOAD_bin_file = NULL;
		BINLOAD_loading_basic = 0;
	}
	if (Atari800_machine_type == Atari800_MACHINE_5200) {
		FUNC2("binload: can't run Atari programs directly on the 5200");
		return FALSE;
	}
	BINLOAD_bin_file = FUNC5(filename, "rb");
	if (BINLOAD_bin_file == NULL) {	/* open */
		FUNC2("binload: can't open \"%s\"", filename);
		return FALSE;
	}
	/* Avoid "BOOT ERROR" when loading a BASIC program */
	if (SIO_drive_status[0] == SIO_NO_DISK)
		FUNC3(1);
	if (FUNC6(buf, 1, 2, BINLOAD_bin_file) == 2) {
		if (buf[0] == 0xff && buf[1] == 0xff) {
			BINLOAD_start_binloading = TRUE; /* force SIO to call BINLOAD_LoaderStart at boot */
			FUNC0();             /* reboot */
			return TRUE;
		}
		else if (buf[0] == 0 && buf[1] == 0) {
			BINLOAD_loading_basic = BINLOAD_LOADING_BASIC_SAVED;
			FUNC1();
			FUNC0();
			return TRUE;
		}
		else if (buf[0] >= '0' && buf[0] <= '9') {
			BINLOAD_loading_basic = BINLOAD_LOADING_BASIC_LISTED;
			FUNC1();
			FUNC0();
			return TRUE;
		}
	}
	FUNC4(BINLOAD_bin_file);
	BINLOAD_bin_file = NULL;
	FUNC2("binload: \"%s\" not recognized as a DOS or BASIC program", filename);
	return FALSE;
}