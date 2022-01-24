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
#define  PGS_Menu 133 
#define  PGS_Quit 132 
#define  PGS_ReloadRom 131 
#define  PGS_RestartRun 130 
#define  PGS_Running 129 
#define  PGS_TrayMenu 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int engineState ; 
 char** g_argv ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ load_state_slot ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,char**) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  rom_fname_reload ; 
 scalar_t__ state_slot ; 

int FUNC18(int argc, char *argv[])
{
	g_argv = argv;

	FUNC12();

	FUNC7();
	//in_probe();

	FUNC16();
	FUNC14();

	FUNC3(); // depends on input
	FUNC4(NULL, 0);

	FUNC1();
	FUNC8();

	engineState = PGS_Menu;

	if (argc > 1)
		FUNC11(argc, argv);

	if (engineState == PGS_ReloadRom)
	{
		if (FUNC5(rom_fname_reload)) {
			engineState = PGS_Running;
			if (load_state_slot >= 0) {
				state_slot = load_state_slot;
				FUNC6(1, 0);
			}
		}
	}

	for (;;)
	{
		switch (engineState)
		{
			case PGS_Menu:
				FUNC9();
				break;

			case PGS_TrayMenu:
				FUNC10();
				break;

			case PGS_ReloadRom:
				if (FUNC5(rom_fname_reload))
					engineState = PGS_Running;
				else {
					FUNC17("PGS_ReloadRom == 0\n");
					engineState = PGS_Menu;
				}
				break;

			case PGS_RestartRun:
				engineState = PGS_Running;
				/* vvv fallthrough */

			case PGS_Running:
				FUNC2();
				break;

			case PGS_Quit:
				goto endloop;

			default:
				FUNC17("engine got into unknown state (%i), exitting\n", engineState);
				goto endloop;
		}
	}

	endloop:

	FUNC0();
	FUNC13();
	FUNC15();

	return 0;
}