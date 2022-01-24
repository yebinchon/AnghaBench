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
 scalar_t__ MEMORY_mem ; 
 scalar_t__ af80_rom ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ not_rom_output_enable ; 
 int rom_bank_select ; 

__attribute__((used)) static void FUNC2(void)
{
	if (not_rom_output_enable) {
		FUNC1(MEMORY_mem + 0xd500, 0xff, 0x100);
	}
	else {
		FUNC0(MEMORY_mem + 0xd500, af80_rom + (rom_bank_select<<8), 0x100);
	}
}