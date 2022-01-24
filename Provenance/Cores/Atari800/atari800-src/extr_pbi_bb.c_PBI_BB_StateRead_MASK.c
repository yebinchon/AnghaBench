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
 int BB_RAM_SIZE ; 
 scalar_t__ PBI_BB_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bb_PCR ; 
 int /*<<< orphan*/ * bb_ram ; 
 scalar_t__ bb_ram_bank_offset ; 
 int /*<<< orphan*/  bb_rom_bank ; 
 int /*<<< orphan*/  bb_rom_filename ; 
 scalar_t__ bb_rom_high_bit ; 
 int /*<<< orphan*/  bb_scsi_disk_filename ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	FUNC1(&PBI_BB_enabled, 1);
	if (PBI_BB_enabled) {
		FUNC0(bb_scsi_disk_filename);
		FUNC0(bb_rom_filename);
		FUNC3();
		FUNC1(&bb_ram_bank_offset, 1);
		FUNC2(bb_ram, BB_RAM_SIZE);
		FUNC2(&bb_rom_bank, 1);
		FUNC1(&bb_rom_high_bit, 1);
		FUNC2(&bb_PCR, 1);
	}
}