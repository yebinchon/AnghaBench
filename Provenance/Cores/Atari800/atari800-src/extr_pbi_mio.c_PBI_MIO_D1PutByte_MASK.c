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
typedef  int UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int CPU_REMEMBER_PC_STEPS ; 
 int* CPU_remember_PC ; 
 int CPU_remember_PC_curpos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEMORY_mem ; 
 scalar_t__ MEMORY_os ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 
 scalar_t__ mio_ram ; 
 int mio_ram_bank_offset ; 
 int mio_ram_enabled ; 
 scalar_t__ mio_rom ; 
 int mio_rom_bank ; 
 scalar_t__ mio_scsi_enabled ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(UWORD addr, UBYTE byte)
{
	int old_mio_ram_bank_offset = mio_ram_bank_offset;
	int old_mio_ram_enabled = mio_ram_enabled;
	int offset_changed;
	int ram_enabled_changed;
	addr &= 0xffe3; /* 7 mirrors */
	if (addr == 0xd1e0) {
		/* ram bank A15-A8 */
		mio_ram_bank_offset &= 0xf0000;
		mio_ram_bank_offset |= (byte << 8);
	}
	else if (addr == 0xd1e1) {
		if (mio_scsi_enabled) {
			FUNC2(byte^0xff);
			FUNC1(1);
			FUNC1(0);
		}
	}
	else if (addr == 0xd1e2) {
		/* ram bank A19-A16, ram enable, other stuff */
		mio_ram_bank_offset &= 0x0ffff;
		mio_ram_bank_offset |= ( (byte & 0x0f) <<  16);
		mio_ram_enabled = (byte & 0x20);
		if (mio_scsi_enabled) FUNC3(!!(byte & 0x10));
	}
	else if (addr == 0xd1e3) {
		/* or 0xd1ff. rom bank. */
		if (mio_rom_bank != byte){
			int offset = -1;
			if (byte == 4) offset = 0x2000;
			else if (byte == 8) offset = 0x2800;
			else if (byte == 0x10) offset = 0x3000;
			else if (byte == 0x20) offset = 0x3800;
			if (offset != -1) {
				FUNC4(MEMORY_mem + 0xd800, mio_rom+offset, 0x800);
				FUNC0(FUNC6("mio bank:%2x activated\n", byte));
			}else{
				FUNC4(MEMORY_mem + 0xd800, MEMORY_os + 0x1800, 0x800);
				FUNC0(FUNC6("Floating point rom activated\n"));

			}
			mio_rom_bank = byte;	
		}
		
	}
	offset_changed = (old_mio_ram_bank_offset != mio_ram_bank_offset);
	ram_enabled_changed = (old_mio_ram_enabled != mio_ram_enabled);
	if (mio_ram_enabled && ram_enabled_changed) {
		/* Copy new page from buffer, overwrite ff page */
		FUNC4(MEMORY_mem + 0xd600, mio_ram + mio_ram_bank_offset, 0x100);
	} else if (mio_ram_enabled && offset_changed) {
		/* Copy old page to buffer, copy new page from buffer */
		FUNC4(mio_ram + old_mio_ram_bank_offset,MEMORY_mem + 0xd600, 0x100);
		FUNC4(MEMORY_mem + 0xd600, mio_ram + mio_ram_bank_offset, 0x100);
	} else if (!mio_ram_enabled && ram_enabled_changed) {
		/* Copy old page to buffer, set new page to ff */
		FUNC4(mio_ram + old_mio_ram_bank_offset, MEMORY_mem + 0xd600, 0x100);
		FUNC5(MEMORY_mem + 0xd600, 0xff, 0x100);
	}
	FUNC0(FUNC6("MIO Write addr:%4x byte:%2x, cpu:%4x\n", addr, byte,CPU_remember_PC[(CPU_remember_PC_curpos-1)%CPU_REMEMBER_PC_STEPS]));
}