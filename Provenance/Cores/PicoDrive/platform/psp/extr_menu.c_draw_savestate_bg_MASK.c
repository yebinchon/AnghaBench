#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  video; int /*<<< orphan*/ * vsram; int /*<<< orphan*/ * cram; int /*<<< orphan*/ * vram; } ;

/* Variables and functions */
 int PAHW_MCD ; 
 TYPE_1__ Pico ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (char*,char*) ; 
 void* FUNC8 () ; 
 void* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(int slot)
{
	void *file, *oldstate;
	char *fname;

	fname = FUNC4(1, 0, slot);
	if (!fname) return;

	oldstate = FUNC8();
	if (oldstate == NULL) return;

	if (FUNC12(fname + FUNC13(fname) - 3, ".gz") == 0) {
		file = FUNC9(fname, "rb");
		FUNC6(1);
	} else {
		file = FUNC7(fname, "rb");
		FUNC6(0);
	}

	if (file) {
		if (PicoAHW & PAHW_MCD) {
			FUNC0(file);
		} else {
			FUNC3(file, 0x10020, SEEK_SET);  // skip header and RAM in state file
			FUNC2(Pico.vram, 1, sizeof(Pico.vram), file);
			FUNC3(file, 0x2000, SEEK_CUR);
			FUNC2(Pico.cram, 1, sizeof(Pico.cram), file);
			FUNC2(Pico.vsram, 1, sizeof(Pico.vsram), file);
			FUNC3(file, 0x221a0, SEEK_SET);
			FUNC2(&Pico.video, 1, sizeof(Pico.video), file);
		}
		FUNC1(file);
	}

	FUNC5(0);
	FUNC10(1, 0);

	FUNC11(oldstate);
}