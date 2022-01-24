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
struct TYPE_2__ {scalar_t__ romsize; scalar_t__ rom; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_STATUS ; 
 int M68K_BANK_SIZE ; 
 TYPE_1__ Pico ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PicoResetHook ; 
 int /*<<< orphan*/  carthw_realtec_reset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 

void FUNC3(void)
{
	int i;

	FUNC1(EL_STATUS, "Realtec mapper startup");

	// allocate additional bank for boot code
	// (we know those ROMs have aligned size)
	i = FUNC0(Pico.romsize + M68K_BANK_SIZE);
	if (i != 0) {
		FUNC1(EL_STATUS, "OOM");
		return;
	}

	// create bank for boot code
	for (i = 0; i < M68K_BANK_SIZE; i += 0x2000)
		FUNC2(Pico.rom + Pico.romsize + i, Pico.rom + Pico.romsize - 0x2000, 0x2000);

	PicoResetHook = carthw_realtec_reset;
}