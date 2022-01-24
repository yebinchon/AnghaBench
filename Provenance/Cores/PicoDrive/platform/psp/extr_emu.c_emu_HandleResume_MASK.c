#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* tracks; } ;
typedef  TYPE_5__ cue_data_t ;
struct TYPE_12__ {int Status_CDC; } ;
struct TYPE_11__ {TYPE_2__* Tracks; } ;
struct TYPE_14__ {int* s68k_regs; TYPE_4__ scd; TYPE_3__ TOC; } ;
struct TYPE_10__ {int /*<<< orphan*/ * F; } ;
struct TYPE_9__ {char* fname; } ;

/* Variables and functions */
 int PAHW_MCD ; 
 int PicoAHW ; 
 TYPE_8__* Pico_mcd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_5__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 char* rom_fname_reload ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

void FUNC9(void)
{
	if (!(PicoAHW & PAHW_MCD)) return;

	// reopen first CD track
	if (Pico_mcd->TOC.Tracks[0].F != NULL)
	{
		char *fname = rom_fname_reload;
		int len = FUNC8(rom_fname_reload);
		cue_data_t *cue_data = NULL;

		if (len > 4 && FUNC7(fname + len - 4,  ".cue") == 0)
		{
			cue_data = FUNC2(rom_fname_reload);
			if (cue_data != NULL)
				fname = cue_data->tracks[1].fname;
		}

		FUNC3("emu_HandleResume: reopen %s\n", fname);
		FUNC5(Pico_mcd->TOC.Tracks[0].F);
		Pico_mcd->TOC.Tracks[0].F = FUNC6(fname);
		FUNC3("reopen %s\n", Pico_mcd->TOC.Tracks[0].F != NULL ? "ok" : "failed");

		if (cue_data != NULL) FUNC1(cue_data);
	}

	FUNC4();

	if (!(Pico_mcd->s68k_regs[0x36] & 1) && (Pico_mcd->scd.Status_CDC & 1))
		FUNC0();
}