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
 int /*<<< orphan*/  PDF_RGB555 ; 
 int /*<<< orphan*/  PICO_INPUT_PAD_6BTN ; 
 int POPT_ACC_SPRITES ; 
 int POPT_DIS_32C_BORDER ; 
 int POPT_EN_32X ; 
 int POPT_EN_DRC ; 
 int POPT_EN_FM ; 
 int POPT_EN_MCD_CDDA ; 
 int POPT_EN_MCD_GFX ; 
 int POPT_EN_MCD_PCM ; 
 int POPT_EN_PSG ; 
 int POPT_EN_PWM ; 
 int POPT_EN_STEREO ; 
 int POPT_EN_Z80 ; 
 int PicoAutoRgnOrder ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PicoMCDcloseTray ; 
 int /*<<< orphan*/  PicoMCDopenTray ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int PsndRate ; 
 int /*<<< orphan*/  RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE ; 
 int /*<<< orphan*/  RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL ; 
 int VOUT_MAX_HEIGHT ; 
 int VOUT_MAX_WIDTH ; 
 int disk_control ; 
 int /*<<< orphan*/  disk_tray_close ; 
 int /*<<< orphan*/  disk_tray_open ; 
 int /*<<< orphan*/ * emu_log ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  vout_buf ; 
 int vout_height ; 
 int vout_width ; 

void FUNC7(void)
{
	int level;

#ifdef IOS
	emu_log = fopen("/User/Documents/PicoDrive.log", "w");
	if (emu_log == NULL)
		emu_log = fopen("PicoDrive.log", "w");
	if (emu_log == NULL)
#endif
	emu_log = stdout;

	level = 0;
	FUNC4(RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL, &level);

	FUNC4(RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE, &disk_control);

	PicoOpt = POPT_EN_STEREO|POPT_EN_FM|POPT_EN_PSG|POPT_EN_Z80
		| POPT_EN_MCD_PCM|POPT_EN_MCD_CDDA|POPT_EN_MCD_GFX
		| POPT_EN_32X|POPT_EN_PWM
		| POPT_ACC_SPRITES|POPT_DIS_32C_BORDER;
#ifdef __arm__
	PicoOpt |= POPT_EN_DRC;
#endif
	PsndRate = 44100;
	PicoAutoRgnOrder = 0x184; // US, EU, JP

	vout_width = 320;
	vout_height = 240;
	vout_buf = FUNC6(VOUT_MAX_WIDTH * VOUT_MAX_HEIGHT * 2);

	FUNC2();
	FUNC1(PDF_RGB555, 0);
	FUNC0(vout_buf, vout_width * 2);

	//PicoMessage = plat_status_msg_busy_next;
	PicoMCDopenTray = disk_tray_open;
	PicoMCDcloseTray = disk_tray_close;

	//update_variables();
    FUNC3(0, PICO_INPUT_PAD_6BTN);
    FUNC3(1, PICO_INPUT_PAD_6BTN);
}