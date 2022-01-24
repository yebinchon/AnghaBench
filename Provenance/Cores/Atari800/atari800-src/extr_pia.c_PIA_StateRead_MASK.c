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
typedef  int UBYTE ;

/* Variables and functions */
 scalar_t__ Atari800_MACHINE_XLXE ; 
 scalar_t__ Atari800_machine_type ; 
 scalar_t__ MEMORY_RAM_320_COMPY_SHOP ; 
 scalar_t__ MEMORY_RAM_320_RAMBO ; 
 int MEMORY_cartA0BF_enabled ; 
 scalar_t__ MEMORY_ram_size ; 
 int MEMORY_selftest_enabled ; 
 int MEMORY_xe_bank ; 
 int PIA_PACTL ; 
 int PIA_PBCTL ; 
 int PIA_PORTA ; 
 int PIA_PORTA_mask ; 
 int PIA_PORTB ; 
 int PIA_PORTB_mask ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

void FUNC4(UBYTE version)
{
	UBYTE byte;

	FUNC3( &PIA_PACTL, 1 );
	FUNC1(PIA_PACTL & 0x08 ? 0 : 1);
	FUNC3( &byte, 1 );
	if ((PIA_PBCTL ^ byte) & 0x08) {
		/* The command line status has changed. */
		FUNC0(byte & 0x08 ? 0 : 1);
	}
	PIA_PBCTL = byte;
	FUNC3( &PIA_PORTA, 1 );
	FUNC3( &PIA_PORTB, 1 );

	/* In version 7 and later these variables are read in memory.c. */
	if (version <= 6) {
		int Ram256;
		FUNC2( &MEMORY_xe_bank, 1 );
		FUNC2( &MEMORY_selftest_enabled, 1 );
		FUNC2( &Ram256, 1 );

		if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
			if (Ram256 == 1 && MEMORY_ram_size == MEMORY_RAM_320_COMPY_SHOP)
				MEMORY_ram_size = MEMORY_RAM_320_RAMBO;
		}
		FUNC2( &MEMORY_cartA0BF_enabled, 1 );
	}

	FUNC3( &PIA_PORTA_mask, 1 );
	FUNC3( &PIA_PORTB_mask, 1 );
}