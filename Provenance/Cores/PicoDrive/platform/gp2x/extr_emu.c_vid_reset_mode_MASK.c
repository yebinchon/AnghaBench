#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dirtyPal; int /*<<< orphan*/  pal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int EmuOpt; scalar_t__ scaling; } ;

/* Variables and functions */
 scalar_t__ EOPT_SCALE_SW ; 
 int EOPT_WIZ_TEAR_FIX ; 
 int /*<<< orphan*/ * EmuScanBegin16_rot ; 
 int /*<<< orphan*/ * EmuScanBegin8_rot ; 
 int /*<<< orphan*/ * EmuScanEnd16_rot ; 
 int /*<<< orphan*/ * EmuScanEnd8_rot ; 
 int PAHW_32X ; 
 int PAHW_SMS ; 
 int /*<<< orphan*/  PDF_8BIT ; 
 int /*<<< orphan*/  PDF_NONE ; 
 int /*<<< orphan*/  PDF_RGB555 ; 
 int /*<<< orphan*/  POPT_ALT_RENDERER ; 
 int /*<<< orphan*/  POPT_EN_SOFTSCALE ; 
 TYPE_3__ Pico ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PicoOpt ; 
#define  RT_16BIT 130 
#define  RT_8BIT_ACC 129 
#define  RT_8BIT_FAST 128 
 TYPE_2__ currentConfig ; 
 int /*<<< orphan*/  emu_osd_text16 ; 
 int /*<<< orphan*/ * emu_scan_begin ; 
 int /*<<< orphan*/ * emu_scan_end ; 
 int /*<<< orphan*/  g_screen_ptr ; 
 int g_screen_width ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int* localPal ; 
 int /*<<< orphan*/  make_local_pal ; 
 int /*<<< orphan*/  make_local_pal_md ; 
 int /*<<< orphan*/  make_local_pal_sms ; 
 int /*<<< orphan*/  osd_text ; 
 int /*<<< orphan*/  osd_text16_rot ; 
 int /*<<< orphan*/  osd_text8 ; 
 int /*<<< orphan*/  osd_text8_rot ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  vidcpyM2 ; 
 int /*<<< orphan*/  vidcpy_m2 ; 
 int /*<<< orphan*/  vidcpy_m2_rot ; 

__attribute__((used)) static void FUNC10(void)
{
	int gp2x_mode = 16;
	int renderer = FUNC3();

	PicoOpt &= ~POPT_ALT_RENDERER;
	emu_scan_begin = NULL;
	emu_scan_end = NULL;

	switch (renderer) {
	case RT_16BIT:
		FUNC2(PDF_RGB555, 0);
		FUNC1(g_screen_ptr, g_screen_width * 2);
		break;
	case RT_8BIT_ACC:
		FUNC2(PDF_8BIT, 0);
		FUNC1(g_screen_ptr, g_screen_width);
		gp2x_mode = 8;
		break;
	case RT_8BIT_FAST:
		PicoOpt |= POPT_ALT_RENDERER;
		FUNC2(PDF_NONE, 0);
		vidcpyM2 = vidcpy_m2;
		gp2x_mode = 8;
		break;
	default:
		FUNC9("bad renderer\n");
		break;
	}

	if (PicoAHW & PAHW_32X) {
		// Wiz 16bit is an exception, uses line rendering due to rotation mess
		if (renderer == RT_16BIT && (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX)) {
			FUNC2(PDF_RGB555, 1);
		}
		else {
			FUNC2(PDF_NONE, 0);
		}
		FUNC1(g_screen_ptr, g_screen_width * 2);
		gp2x_mode = 16;
	}

	if (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX) {
		if ((PicoAHW & PAHW_32X) || renderer == RT_16BIT) {
			emu_scan_begin = EmuScanBegin16_rot;
			emu_scan_end = EmuScanEnd16_rot;
		}
		else if (renderer == RT_8BIT_ACC) {
			emu_scan_begin = EmuScanBegin8_rot;
			emu_scan_end = EmuScanEnd8_rot;
		}
		else if (renderer == RT_8BIT_FAST)
			vidcpyM2 = vidcpy_m2_rot;
	}

	FUNC0(emu_scan_begin, emu_scan_end);

	if (FUNC8())
		osd_text = (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX) ? osd_text16_rot : emu_osd_text16;
	else
		osd_text = (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX) ? osd_text8_rot : osd_text8;

	FUNC7();
	if (!FUNC8()) {
		// setup pal for 8-bit modes
		localPal[0xc0] = 0x0000c000; // MCD LEDs
		localPal[0xd0] = 0x00c00000;
		localPal[0xe0] = 0x00000000; // reserved pixels for OSD
		localPal[0xf0] = 0x00ffffff;
		FUNC6(localPal, 0x100);
		FUNC4(0, 0xe0, 320*240);
	}
	else
		FUNC4(0, 0, 320*240*2);

	if (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX)
		gp2x_mode = -gp2x_mode;

	FUNC5(gp2x_mode, Pico.m.pal);

	Pico.m.dirtyPal = 1;

	PicoOpt &= ~POPT_EN_SOFTSCALE;
	if (currentConfig.scaling == EOPT_SCALE_SW)
		PicoOpt |= POPT_EN_SOFTSCALE;

	// palette converters for 8bit modes
	make_local_pal = (PicoAHW & PAHW_SMS) ? make_local_pal_sms : make_local_pal_md;
}