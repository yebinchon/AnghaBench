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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  SAVE_VERSION_NUMBER ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/ * StateFile ; 
 int /*<<< orphan*/  FUNC18 (int*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ Z_OK ; 
 scalar_t__ nFileError ; 

int FUNC21(const char *filename, const char *mode, UBYTE SaveVerbose)
{
	UBYTE StateVersion = SAVE_VERSION_NUMBER;

	if (StateFile != NULL) {
		FUNC6(StateFile);
		StateFile = NULL;
	}
	nFileError = Z_OK;

	StateFile = FUNC7(filename, mode);
	if (StateFile == NULL) {
		FUNC10("Could not open %s for state save.", filename);
		FUNC9();
		return FALSE;
	}
	if (FUNC8(StateFile, "ATARI800", 8) == 0) {
		FUNC9();
		FUNC6(StateFile);
		StateFile = NULL;
		return FALSE;
	}

	FUNC19(&StateVersion, 1);
	FUNC19(&SaveVerbose, 1);
	/* The order here is important. Atari800_StateSave must be first because it saves the machine type, and
	   decisions on what to save/not save are made based off that later in the process */
	FUNC1();
	FUNC2();
	FUNC17();
	FUNC0();
	FUNC3(SaveVerbose);
	FUNC5();
	FUNC15();
	FUNC16();
#ifdef XEP80_EMULATION
	XEP80_StateSave();
#else
	{
		int local_xep80_enabled = FALSE;
		FUNC18(&local_xep80_enabled, 1);
	}
#endif /* XEP80_EMULATION */
	FUNC13();
#ifdef PBI_MIO
	PBI_MIO_StateSave();
#else
	{
		int local_mio_enabled = FALSE;
		FUNC18(&local_mio_enabled, 1);
	}
#endif /* PBI_MIO */
#ifdef PBI_BB
	PBI_BB_StateSave();
#else
	{
		int local_bb_enabled = FALSE;
		FUNC18(&local_bb_enabled, 1);
	}
#endif /* PBI_BB */
#ifdef PBI_XLD
	PBI_XLD_StateSave();
#else
	{
		int local_xld_enabled = FALSE;
		FUNC18(&local_xld_enabled, 1);
	}
#endif /* PBI_XLD */
#ifdef DREAMCAST
	DCStateSave();
#endif

	if (FUNC6(StateFile) != 0) {
		StateFile = NULL;
		return FALSE;
	}
	StateFile = NULL;

	if (nFileError != Z_OK)
		return FALSE;

	return TRUE;
}