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
struct TYPE_2__ {int /*<<< orphan*/  emu_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_SVP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  SSP_WAIT_PM0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int rPM0 ; 
 TYPE_1__* ssp ; 

__attribute__((used)) static u32 FUNC3(void)
{
	u32 d = FUNC2(0, 0, 0);
	if (d != (u32)-1) return d;
	FUNC1(EL_SVP, "PM0 raw r %04x @ %04x", rPM0, FUNC0());
	d = rPM0;
	if (!(d & 2) && (FUNC0() == 0x800 || FUNC0() == 0x1851E)) {
		ssp->emu_status |= SSP_WAIT_PM0; FUNC1(EL_SVP, "det TIGHT loop: PM0");
	}
	rPM0 &= ~2; // ?
	return d;
}