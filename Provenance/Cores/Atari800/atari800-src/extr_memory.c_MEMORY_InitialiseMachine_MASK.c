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
 int /*<<< orphan*/  ANTIC_GetByte ; 
 int /*<<< orphan*/  ANTIC_PutByte ; 
 int /*<<< orphan*/ * ANTIC_xe_ptr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  Atari800_MACHINE_5200 128 
 int Atari800_MACHINE_800 ; 
 int Atari800_MACHINE_XLXE ; 
 int Atari800_machine_type ; 
 int /*<<< orphan*/  AxlonPutByte ; 
 int /*<<< orphan*/  CARTRIDGE_GetByte ; 
 int /*<<< orphan*/  CARTRIDGE_PutByte ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FALSE ; 
 int GTIA_GRACTL ; 
 int /*<<< orphan*/  GTIA_GetByte ; 
 int /*<<< orphan*/  GTIA_PutByte ; 
 scalar_t__* GTIA_TRIG ; 
 scalar_t__* GTIA_TRIG_latch ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int const) ; 
 int /*<<< orphan*/  FUNC6 (int const,int const) ; 
 int /*<<< orphan*/  MEMORY_axlon_0f_mirror ; 
 int /*<<< orphan*/  MEMORY_axlon_num_banks ; 
 void* MEMORY_cartA0BF_enabled ; 
 int /*<<< orphan*/  FUNC7 (int const,int,int const) ; 
 scalar_t__ MEMORY_mem ; 
 int /*<<< orphan*/  MEMORY_mosaic_num_banks ; 
 int /*<<< orphan*/  MEMORY_os ; 
 int MEMORY_ram_size ; 
 int /*<<< orphan*/ * MEMORY_readmap ; 
 int /*<<< orphan*/ * MEMORY_writemap ; 
 int /*<<< orphan*/  MosaicPutByte ; 
 int /*<<< orphan*/  PBI_D1GetByte ; 
 int /*<<< orphan*/  PBI_D1PutByte ; 
 int /*<<< orphan*/  PBI_D6GetByte ; 
 int /*<<< orphan*/  PBI_D6PutByte ; 
 int /*<<< orphan*/  PBI_D7GetByte ; 
 int /*<<< orphan*/  PBI_D7PutByte ; 
 int /*<<< orphan*/  PIA_GetByte ; 
 int /*<<< orphan*/  PIA_PutByte ; 
 int /*<<< orphan*/  POKEY_GetByte ; 
 int /*<<< orphan*/  POKEY_PutByte ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ axlon_curbank ; 
 void* cart809F_enabled ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int const) ; 
 int mosaic_curbank ; 

void FUNC11(void)
{
	int const os_size = Atari800_machine_type == Atari800_MACHINE_800 ? 0x2800
	                    : Atari800_machine_type == Atari800_MACHINE_5200 ? 0x800
	                    : 0x4000;
	int const os_rom_start = 0x10000 - os_size;
	ANTIC_xe_ptr = NULL;
	cart809F_enabled = FALSE;
	MEMORY_cartA0BF_enabled = FALSE;
	if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
		GTIA_TRIG[3] = 0;
		if (GTIA_GRACTL & 4)
			GTIA_TRIG_latch[3] = 0;
	}
	FUNC10(MEMORY_mem + os_rom_start, MEMORY_os, os_size);
	switch (Atari800_machine_type) {
	case Atari800_MACHINE_5200:
		FUNC7(0x0000, 0x00, 0xf800);
		FUNC5(0x0000, 0x3fff);
		FUNC6(0x4000, 0xffff);
#ifndef PAGED_ATTRIB
		FUNC4(0xc000, 0xcfff);	/* 5200 GTIA Chip */
		FUNC4(0xd400, 0xd4ff);	/* 5200 ANTIC Chip */
		FUNC4(0xe800, 0xefff);	/* 5200 POKEY Chip */
#else
		MEMORY_readmap[0xc0] = GTIA_GetByte;
		MEMORY_readmap[0xc1] = GTIA_GetByte;
		MEMORY_readmap[0xc2] = GTIA_GetByte;
		MEMORY_readmap[0xc3] = GTIA_GetByte;
		MEMORY_readmap[0xc4] = GTIA_GetByte;
		MEMORY_readmap[0xc5] = GTIA_GetByte;
		MEMORY_readmap[0xc6] = GTIA_GetByte;
		MEMORY_readmap[0xc7] = GTIA_GetByte;
		MEMORY_readmap[0xc8] = GTIA_GetByte;
		MEMORY_readmap[0xc9] = GTIA_GetByte;
		MEMORY_readmap[0xca] = GTIA_GetByte;
		MEMORY_readmap[0xcb] = GTIA_GetByte;
		MEMORY_readmap[0xcc] = GTIA_GetByte;
		MEMORY_readmap[0xcd] = GTIA_GetByte;
		MEMORY_readmap[0xce] = GTIA_GetByte;
		MEMORY_readmap[0xcf] = GTIA_GetByte;
		MEMORY_readmap[0xd4] = ANTIC_GetByte;
		MEMORY_readmap[0xe8] = POKEY_GetByte;
		MEMORY_readmap[0xe9] = POKEY_GetByte;
		MEMORY_readmap[0xea] = POKEY_GetByte;
		MEMORY_readmap[0xeb] = POKEY_GetByte;
		MEMORY_readmap[0xec] = POKEY_GetByte;
		MEMORY_readmap[0xed] = POKEY_GetByte;
		MEMORY_readmap[0xee] = POKEY_GetByte;
		MEMORY_readmap[0xef] = POKEY_GetByte;

		MEMORY_writemap[0xc0] = GTIA_PutByte;
		MEMORY_writemap[0xc1] = GTIA_PutByte;
		MEMORY_writemap[0xc2] = GTIA_PutByte;
		MEMORY_writemap[0xc3] = GTIA_PutByte;
		MEMORY_writemap[0xc4] = GTIA_PutByte;
		MEMORY_writemap[0xc5] = GTIA_PutByte;
		MEMORY_writemap[0xc6] = GTIA_PutByte;
		MEMORY_writemap[0xc7] = GTIA_PutByte;
		MEMORY_writemap[0xc8] = GTIA_PutByte;
		MEMORY_writemap[0xc9] = GTIA_PutByte;
		MEMORY_writemap[0xca] = GTIA_PutByte;
		MEMORY_writemap[0xcb] = GTIA_PutByte;
		MEMORY_writemap[0xcc] = GTIA_PutByte;
		MEMORY_writemap[0xcd] = GTIA_PutByte;
		MEMORY_writemap[0xce] = GTIA_PutByte;
		MEMORY_writemap[0xcf] = GTIA_PutByte;
		MEMORY_writemap[0xd4] = ANTIC_PutByte;
		MEMORY_writemap[0xe8] = POKEY_PutByte;
		MEMORY_writemap[0xe9] = POKEY_PutByte;
		MEMORY_writemap[0xea] = POKEY_PutByte;
		MEMORY_writemap[0xeb] = POKEY_PutByte;
		MEMORY_writemap[0xec] = POKEY_PutByte;
		MEMORY_writemap[0xed] = POKEY_PutByte;
		MEMORY_writemap[0xee] = POKEY_PutByte;
		MEMORY_writemap[0xef] = POKEY_PutByte;
#endif
		break;
	default:
		{
			int const base_ram = MEMORY_ram_size > 64 ? 64 * 1024 : MEMORY_ram_size * 1024;
			int const hole_end = (os_rom_start < 0xd000 ? os_rom_start : 0xd000);
			int const hole_start = base_ram > hole_end ? hole_end : base_ram;
			FUNC3();
			FUNC7(0x0000, 0x00, hole_start);
			FUNC5(0x0000, hole_start - 1);
			if (hole_start < hole_end) {
				FUNC7(hole_start, 0xff, hole_end - hole_start);
				FUNC6(hole_start, hole_end - 1);
			}
			if (hole_end < 0xd000)
				FUNC6(hole_end, 0xcfff);
			FUNC6(0xd800, 0xffff);
#ifndef PAGED_ATTRIB
			FUNC4(0xd000, 0xd7ff);
			if (Atari800_machine_type == Atari800_MACHINE_800) {
				if (MEMORY_mosaic_num_banks > 0) FUNC4(0xff00, 0xffff);
				/* only 0xffc0-0xffff are used, but mark the whole
				 * page to make state saving easier */
				if (MEMORY_axlon_num_banks > 0) {
					FUNC4(0xcf00, 0xcfff);
					if (MEMORY_axlon_0f_mirror) FUNC4(0x0f00, 0x0fff);
					/* only ?fc0-?fff are used, but mark the whole page*/
				}
			}
#else
			MEMORY_readmap[0xd0] = GTIA_GetByte;
			MEMORY_readmap[0xd1] = PBI_D1GetByte;
			MEMORY_readmap[0xd2] = POKEY_GetByte;
			MEMORY_readmap[0xd3] = PIA_GetByte;
			MEMORY_readmap[0xd4] = ANTIC_GetByte;
			MEMORY_readmap[0xd5] = CARTRIDGE_GetByte;
			MEMORY_readmap[0xd6] = PBI_D6GetByte;
			MEMORY_readmap[0xd7] = PBI_D7GetByte;
			MEMORY_writemap[0xd0] = GTIA_PutByte;
			MEMORY_writemap[0xd1] = PBI_D1PutByte;
			MEMORY_writemap[0xd2] = POKEY_PutByte;
			MEMORY_writemap[0xd3] = PIA_PutByte;
			MEMORY_writemap[0xd4] = ANTIC_PutByte;
			MEMORY_writemap[0xd5] = CARTRIDGE_PutByte;
			MEMORY_writemap[0xd6] = PBI_D6PutByte;
			MEMORY_writemap[0xd7] = PBI_D7PutByte;
			if (Atari800_machine_type == Atari800_MACHINE_800) {
				if (MEMORY_mosaic_num_banks > 0) MEMORY_writemap[0xff] = MosaicPutByte;
				if (MEMORY_axlon_num_banks > 0) {
					MEMORY_writemap[0xcf] = AxlonPutByte;
					if (MEMORY_axlon_0f_mirror)
						MEMORY_writemap[0x0f] = AxlonPutByte;
				}
			}
#endif
		}
		break;
	}
	FUNC1();
	FUNC8();
	FUNC9();
	axlon_curbank = 0;
	mosaic_curbank = 0x3f;
	FUNC0();
	FUNC2();
}