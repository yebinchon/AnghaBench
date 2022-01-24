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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int SAVE_VERSION_NUMBER ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/ * StateFile ; 
 int /*<<< orphan*/  FUNC18 (int*,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ Z_OK ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 
 scalar_t__ nFileError ; 

int FUNC21(const char *filename, const char *mode)
{
	char header_string[8];
	UBYTE StateVersion = 0;  /* The version of the save file */
	UBYTE SaveVerbose = 0;   /* Verbose mode means save basic, OS if patched */

	if (StateFile != NULL) {
		FUNC6(StateFile);
		StateFile = NULL;
	}
	nFileError = Z_OK;

	StateFile = FUNC7(filename, mode);
	if (StateFile == NULL) {
		FUNC10("Could not open %s for state read.", filename);
		FUNC9();
		return FALSE;
	}

	if (FUNC8(StateFile, header_string, 8) == 0) {
		FUNC9();
		FUNC6(StateFile);
		StateFile = NULL;
		return FALSE;
	}
	if (FUNC20(header_string, "ATARI800", 8) != 0) {
		FUNC10("This is not an Atari800 state save file.");
		FUNC6(StateFile);
		StateFile = NULL;
		return FALSE;
	}

	if (FUNC8(StateFile, &StateVersion, 1) == 0
	 || FUNC8(StateFile, &SaveVerbose, 1) == 0) {
		FUNC10("Failed read from Atari state file.");
		FUNC9();
		FUNC6(StateFile);
		StateFile = NULL;
		return FALSE;
	}

	if (StateVersion > SAVE_VERSION_NUMBER || StateVersion < 3) {
		FUNC10("Cannot read this state file because it is an incompatible version.");
		FUNC6(StateFile);
		StateFile = NULL;
		return FALSE;
	}

	FUNC1(StateVersion);
	if (StateVersion >= 4) {
		FUNC2(StateVersion);
		FUNC17();
	}
	FUNC0();
	FUNC3(SaveVerbose, StateVersion);
	FUNC5(StateVersion);
	FUNC15(StateVersion);
	FUNC16();
	if (StateVersion >= 6) {
#ifdef XEP80_EMULATION
		XEP80_StateRead();
#else
		int local_xep80_enabled;
		FUNC18(&local_xep80_enabled,1);
		if (local_xep80_enabled) {
			FUNC10("Cannot read this state file because this version does not support XEP80.");
			FUNC6(StateFile);
			StateFile = NULL;
			return FALSE;
		}
#endif /* XEP80_EMULATION */
		FUNC13();
#ifdef PBI_MIO
		PBI_MIO_StateRead();
#else
		{
			int local_mio_enabled;
			FUNC18(&local_mio_enabled,1);
			if (local_mio_enabled) {
				FUNC10("Cannot read this state file because this version does not support MIO.");
				FUNC6(StateFile);
				StateFile = NULL;
				return FALSE;
			}
		}
#endif /* PBI_MIO */
#ifdef PBI_BB
		PBI_BB_StateRead();
#else
		{
			int local_bb_enabled;
			FUNC18(&local_bb_enabled,1);
			if (local_bb_enabled) {
				FUNC10("Cannot read this state file because this version does not support the Black Box.");
				FUNC6(StateFile);
				StateFile = NULL;
				return FALSE;
			}
		}
#endif /* PBI_BB */
#ifdef PBI_XLD
		PBI_XLD_StateRead();
#else
		{
			int local_xld_enabled;
			FUNC18(&local_xld_enabled,1);
			if (local_xld_enabled) {
				FUNC10("Cannot read this state file because this version does not support the 1400XL/1450XLD.");
				FUNC6(StateFile);
				StateFile = NULL;
				return FALSE;
			}
		}
#endif /* PBI_XLD */
	}
#ifdef DREAMCAST
	DCStateRead();
#endif

	FUNC6(StateFile);
	StateFile = NULL;

	if (nFileError != Z_OK)
		return FALSE;

	return TRUE;
}