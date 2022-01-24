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
typedef  int u32 ;
struct TYPE_2__ {int romsize; scalar_t__ rom; } ;

/* Variables and functions */
 int EL_ANOMALY ; 
 int EL_STATUS ; 
 TYPE_1__ Pico ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  m68k_read16_map ; 
 int /*<<< orphan*/  m68k_read8_map ; 
 int* ssf2_banks ; 

__attribute__((used)) static void FUNC3(u32 a, u32 d)
{
	u32 target, base;

	if ((a & 0xfffff0) != 0xa130f0) {
		FUNC0(a, d);
		return;
	}

	a &= 0x0e;
	if (a == 0)
		return;

	ssf2_banks[a >> 1] = d;
	base = d << 19;
	target = a << 18;
	if (base + 0x80000 > Pico.romsize) {
		FUNC2(EL_ANOMALY|EL_STATUS, "ssf2: missing bank @ %06x", base);
		return;
	}

	FUNC1(m68k_read8_map,  target, target + 0x80000 - 1, Pico.rom + base, 0);
	FUNC1(m68k_read16_map, target, target + 0x80000 - 1, Pico.rom + base, 0);
}