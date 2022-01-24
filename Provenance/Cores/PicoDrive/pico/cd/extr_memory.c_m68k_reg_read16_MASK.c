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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int busreq; int stopwatch_base_c; } ;
struct TYPE_4__ {int* s68k_regs; TYPE_1__ m; int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_CDREG3 ; 
 int /*<<< orphan*/  EL_CDREGS ; 
 int /*<<< orphan*/  EL_UIO ; 
 TYPE_2__* Pico_mcd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SekPc ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(u32 a)
{
  u32 d = 0;
  a &= 0x3e;

  switch (a) {
    case 0:
      // here IFL2 is always 0, just like in Gens
      d = ((Pico_mcd->s68k_regs[0x33] << 13) & 0x8000)
        | Pico_mcd->m.busreq;
      goto end;
    case 2:
      FUNC3(a);
      d = (Pico_mcd->s68k_regs[a]<<8) | (Pico_mcd->s68k_regs[a+1]&0xc7);
      FUNC2(EL_CDREG3, "m68k_regs r3: %02x @%06x", (u8)d, SekPc);
      goto end;
    case 4:
      d = Pico_mcd->s68k_regs[4]<<8;
      goto end;
    case 6:
      d = *(u16 *)(Pico_mcd->bios + 0x72);
      goto end;
    case 8:
      d = FUNC1();
      goto end;
    case 0xA:
      FUNC2(EL_UIO, "m68k FIXME: reserved read");
      goto end;
    case 0xC: // 384 cycle stopwatch timer
      // ugh..
      d = FUNC4(FUNC0());
      d = (d - Pico_mcd->m.stopwatch_base_c) / 384;
      d &= 0x0fff;
      FUNC2(EL_CDREGS, "m68k stopwatch timer read (%04x)", d);
      goto end;
  }

  if (a < 0x30) {
    // comm flag/cmd/status (0xE-0x2F)
    FUNC3(a);
    d = (Pico_mcd->s68k_regs[a]<<8) | Pico_mcd->s68k_regs[a+1];
    goto end;
  }

  FUNC2(EL_UIO, "m68k_regs FIXME invalid read @ %02x", a);

end:
  return d;
}