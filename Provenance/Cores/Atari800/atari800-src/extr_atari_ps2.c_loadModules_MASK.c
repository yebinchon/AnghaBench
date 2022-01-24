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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  MC_TYPE_MC ; 
 int /*<<< orphan*/  PS2KBD_READMODE_RAW ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  audsrv ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps2kbd ; 
 int /*<<< orphan*/  size_audsrv ; 
 int /*<<< orphan*/  size_ps2kbd ; 
 int /*<<< orphan*/  size_usbd ; 
 int /*<<< orphan*/  usbd ; 

void FUNC8(void)
{
	int ret;
	//init_scr();

	ret = FUNC5("rom0:SIO2MAN", 0, NULL);
	if (ret < 0) {
		FUNC0("Sio2man loading failed: %d", ret);
		FUNC6();
	}

//	Log_print("mcman");
	FUNC5("rom0:MCMAN", 0, NULL);

//	Log_print("mcserv");
	FUNC5("rom0:MCSERV", 0, NULL);

//	Log_print("padman");
	ret = FUNC5("rom0:PADMAN", 0, NULL);
	if (ret < 0) {
		FUNC0("Padman loading failed: %d", ret);
		FUNC6();
	}

	FUNC7(MC_TYPE_MC);

//	cdinit(1);
	FUNC4(0);

	FUNC3(usbd, size_usbd, 0, NULL, &ret);
	FUNC3(ps2kbd, size_ps2kbd, 0, NULL, &ret);

	if (FUNC1() == 0) {
		FUNC0("Failed to Init Keyboard.");
	}
	FUNC2(PS2KBD_READMODE_RAW);

#ifdef SOUND
	ret = SifLoadModule("rom0:LIBSD", 0, NULL);

	ret = SifExecModuleBuffer(audsrv, size_audsrv, 0, NULL, &ret);
#endif

}