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

/* Variables and functions */
#define  PGS_Menu 134 
#define  PGS_Quit 133 
#define  PGS_ReloadRom 132 
#define  PGS_RestartRun 131 
#define  PGS_Running 130 
#define  PGS_SuspendWake 129 
#define  PGS_Suspending 128 
 int /*<<< orphan*/  PicoConfigFile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int engineState ; 
 int engineStateSuspend ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  mp3_last_error ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  psp_unhandled_suspend ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  rom_fname_loaded ; 
 int /*<<< orphan*/  rom_fname_reload ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC18(void)
{
	FUNC14();

	FUNC5();
	FUNC4(0, 0);
	FUNC0(PicoConfigFile);

	FUNC3();
	FUNC9();
	// moved to emu_Loop(), after CPU clock change..
	//mp3_init();

	engineState = PGS_Menu;

	for (;;)
	{
		switch (engineState)
		{
			case PGS_Menu:
#ifndef GPROF
				FUNC10();
#else
				strcpy(rom_fname_reload, rom_fname_loaded);
				engineState = PGS_ReloadRom;
#endif
				break;

			case PGS_ReloadRom:
				if (FUNC6(rom_fname_reload)) {
					engineState = PGS_Running;
					if (mp3_last_error != 0)
						engineState = PGS_Menu; // send to menu to display mp3 error
				} else {
					FUNC8("PGS_ReloadRom == 0\n");
					engineState = PGS_Menu;
				}
				break;

			case PGS_Suspending:
				while (engineState == PGS_Suspending)
					FUNC16();
				break;

			case PGS_SuspendWake:
				psp_unhandled_suspend = 0;
				FUNC15();
				FUNC2();
				engineState = engineStateSuspend;
				break;

			case PGS_RestartRun:
				engineState = PGS_Running;

			case PGS_Running:
				if (psp_unhandled_suspend) {
					psp_unhandled_suspend = 0;
					FUNC15();
					FUNC2();
					break;
				}
				FUNC12();
#ifdef GPROF
				goto endloop;
#endif
				break;

			case PGS_Quit:
				goto endloop;

			default:
				FUNC8("engine got into unknown state (%i), exitting\n", engineState);
				goto endloop;
		}
	}

	endloop:

	FUNC11();
	FUNC1();
#ifdef GPROF
	gprof_cleanup();
#endif
#ifndef GCOV
	FUNC13();
#endif

	return 0;
}