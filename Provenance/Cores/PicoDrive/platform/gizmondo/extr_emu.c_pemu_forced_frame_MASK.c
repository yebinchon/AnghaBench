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
 int /*<<< orphan*/  PDF_RGB555 ; 
 int POPT_ACC_SPRITES ; 
 int POPT_EN_SOFTSCALE ; 
 TYPE_3__ Pico ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int PicoOpt ; 
 TYPE_2__ currentConfig ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * giz_screen ; 

void FUNC5(int no_scale, int do_emu)
{
	int po_old = PicoOpt;
	int eo_old = currentConfig.EmuOpt;

	PicoOpt &= ~0x10;
	PicoOpt |= POPT_ACC_SPRITES;
	if (!no_scale)
		PicoOpt |= POPT_EN_SOFTSCALE;
	currentConfig.EmuOpt |= 0x80;

	if (giz_screen == NULL)
		giz_screen = FUNC3(1);

	FUNC1(PDF_RGB555, 0);
	FUNC0(EmuScanBegin16, NULL);
	Pico.m.dirtyPal = 1;
	FUNC2();

	FUNC4();
	giz_screen = NULL;

	PicoOpt = po_old;
	currentConfig.EmuOpt = eo_old;
}