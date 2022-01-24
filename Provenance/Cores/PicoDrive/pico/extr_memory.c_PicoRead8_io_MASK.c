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
typedef  int u32 ;
struct TYPE_3__ {int z80Run; int z80_reset; int /*<<< orphan*/  rotate; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_BUSREQ ; 
 int POPT_EN_32X ; 
 TYPE_2__ Pico ; 
 int PicoOpt ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SekPc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

u32 FUNC5(u32 a)
{
  u32 d;

  if ((a & 0xffe0) == 0x0000) { // I/O ports
    d = FUNC3(a);
    goto end;
  }

  // faking open bus (MegaCD pulldowns don't work here curiously)
  d = Pico.m.rotate++;
  d ^= d << 6;

  if ((a & 0xfc00) == 0x1000) {
    // bit8 seems to be readable in this range
    if (!(a & 1))
      d &= ~0x01;

    if ((a & 0xff01) == 0x1100) { // z80 busreq (verified)
      d |= (Pico.m.z80Run | Pico.m.z80_reset) & 1;
      FUNC2(EL_BUSREQ, "get_zrun: %02x [%i] @%06x", d, FUNC1(), SekPc);
    }
    goto end;
  }

  if (PicoOpt & POPT_EN_32X) {
    d = FUNC0(a);
    goto end;
  }

  d = FUNC4(a);
end:
  return d;
}