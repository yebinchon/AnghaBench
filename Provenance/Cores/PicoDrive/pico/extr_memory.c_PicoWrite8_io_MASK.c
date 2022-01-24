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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {int sram_reg; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_SRAMIO ; 
 int POPT_EN_32X ; 
 TYPE_2__ Pico ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SRR_MAPPED ; 
 int SRR_READONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(u32 a, u32 d)
{
  if ((a & 0xffe1) == 0x0001) { // I/O ports (verified: only LSB!)
    FUNC4(a, d);
    return;
  }
  if ((a & 0xff01) == 0x1100) { // z80 busreq
    FUNC1(d);
    return;
  }
  if ((a & 0xff01) == 0x1200) { // z80 reset
    FUNC2(d);
    return;
  }
  if (a == 0xa130f1) { // sram access register
    FUNC3(EL_SRAMIO, "sram reg=%02x", d);
    Pico.m.sram_reg &= ~(SRR_MAPPED|SRR_READONLY);
    Pico.m.sram_reg |= (u8)(d & 3);
    return;
  }
  if (PicoOpt & POPT_EN_32X) {
    FUNC0(a, d);
    return;
  }

  FUNC5(a, d);
}