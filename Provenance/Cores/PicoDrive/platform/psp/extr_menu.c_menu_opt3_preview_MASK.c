#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; TYPE_1__* vsram; TYPE_1__* cram; TYPE_1__* vram; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 TYPE_2__ Pico ; 
 char* bg_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psp_screen ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ rom_loaded ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long*,void*,unsigned long) ; 

__attribute__((used)) static void FUNC8(int is_32col)
{
	void *oldstate = NULL;

	if (!rom_loaded || ((Pico.video.reg[12]&1)^1) != is_32col)
	{
		extern char bgdatac32_start[], bgdatac40_start[];
		extern int bgdatac32_size, bgdatac40_size;
		void *bgdata = is_32col ? bgdatac32_start : bgdatac40_start;
		unsigned long insize = is_32col ? bgdatac32_size : bgdatac40_size, outsize = 65856;
		int ret;
		ret = FUNC7((Bytef *)bg_buffer, &outsize, bgdata, insize);
		if (ret == 0)
		{
			if (rom_loaded) oldstate = FUNC1();
			FUNC3(Pico.vram,  bg_buffer, sizeof(Pico.vram));
			FUNC3(Pico.cram,  (char *)bg_buffer + 0x10000, 0x40*2);
			FUNC3(Pico.vsram, (char *)bg_buffer + 0x10080, 0x40*2);
			FUNC3(&Pico.video,(char *)bg_buffer + 0x10100, 0x40);
		}
		else
			FUNC2("uncompress returned %i\n", ret);
	}

	FUNC4(psp_screen, 0, 512*272*2/4);
	FUNC0(0);
	FUNC5(1, 0);

	if (oldstate) FUNC6(oldstate);
}