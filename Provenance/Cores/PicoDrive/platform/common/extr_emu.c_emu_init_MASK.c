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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PicoMCDcloseTray ; 
 int /*<<< orphan*/  PicoMCDopenTray ; 
 int /*<<< orphan*/  PicoMessage ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  emu_tray_close ; 
 int /*<<< orphan*/  emu_tray_open ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  p32x_bios_m ; 
 int /*<<< orphan*/  p32x_bios_s ; 
 int FUNC8 (char*,int) ; 
 int /*<<< orphan*/  plat_status_msg_busy_next ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(void)
{
	char path[512];
	int pos;

#if 0
	// FIXME: handle through menu, etc
	FILE *f;
	f = fopen("32X_M_BIOS.BIN", "rb");
	p32x_bios_m = malloc(2048);
	fread(p32x_bios_m, 1, 2048, f);
	fclose(f);
	f = fopen("32X_S_BIOS.BIN", "rb");
	p32x_bios_s = malloc(1024);
	fread(p32x_bios_s, 1, 1024, f);
	fclose(f);
#endif

	/* make dirs for saves */
	pos = FUNC8(path, sizeof(path) - 4);
	FUNC7(path, pos, "mds");
	FUNC7(path, pos, "srm");
	FUNC7(path, pos, "brm");
	FUNC7(path, pos, "cfg");

	FUNC9();

	FUNC5(path);
	FUNC1(path);

	FUNC0();
	PicoMessage = plat_status_msg_busy_next;
	PicoMCDopenTray = emu_tray_open;
	PicoMCDcloseTray = emu_tray_close;

	FUNC10();
}