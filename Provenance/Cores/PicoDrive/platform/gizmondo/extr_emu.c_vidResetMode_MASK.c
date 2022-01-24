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
struct TYPE_4__ {int dirtyPal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int EmuOpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EmuScanBegin16 ; 
 int /*<<< orphan*/  EmuScanBegin8 ; 
 int /*<<< orphan*/  PDF_NONE ; 
 int /*<<< orphan*/  PDF_RGB555 ; 
 TYPE_3__ Pico ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PicoOpt ; 
 TYPE_2__ currentConfig ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * giz_screen ; 
 int* localPal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	giz_screen = FUNC2(1);

	if (PicoOpt&0x10) {
	} else if (currentConfig.EmuOpt&0x80) {
		FUNC1(PDF_RGB555, 0);
		FUNC0(EmuScanBegin16, NULL);
	} else {
		FUNC1(PDF_NONE, 0);
		FUNC0(EmuScanBegin8, NULL);
	}
	if ((PicoOpt&0x10) || !(currentConfig.EmuOpt&0x80)) {
		// setup pal for 8-bit modes
		localPal[0xc0] = 0x0600;
		localPal[0xd0] = 0xc000;
		localPal[0xe0] = 0x0000; // reserved pixels for OSD
		localPal[0xf0] = 0xffff;
	}
	Pico.m.dirtyPal = 1;

	FUNC4(giz_screen, 0, 321*240*2/4);
	if (currentConfig.EmuOpt&0x8000) {
		FUNC3();
		giz_screen = FUNC2(0);
		FUNC4(giz_screen, 0, 321*240*2/4);
	}
	FUNC3();
	giz_screen = NULL;
}