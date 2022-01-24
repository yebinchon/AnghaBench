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
 int PBI_MIO_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * mio_ram ; 
 int mio_ram_bank_offset ; 
 int mio_ram_enabled ; 
 int mio_ram_size ; 
 int /*<<< orphan*/  mio_rom_bank ; 
 int /*<<< orphan*/  mio_rom_filename ; 
 int /*<<< orphan*/  mio_scsi_disk_filename ; 

void FUNC4(void)
{
	FUNC1(&PBI_MIO_enabled, 1);
	if (PBI_MIO_enabled) {
		FUNC0(mio_scsi_disk_filename);
		FUNC0(mio_rom_filename);
		FUNC1(&mio_ram_size, 1);
		FUNC3();
		FUNC1(&mio_ram_bank_offset, 1);
		FUNC2(mio_ram, mio_ram_size);
		FUNC2(&mio_rom_bank, 1);
		FUNC1(&mio_ram_enabled, 1);
	}
}