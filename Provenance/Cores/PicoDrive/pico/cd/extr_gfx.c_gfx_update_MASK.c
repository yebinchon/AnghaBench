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
struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {int y_step; int bufferStart; } ;

/* Variables and functions */
 int EL_CD ; 
 int EL_INTS ; 
 int PCDS_IEN1 ; 
 int /*<<< orphan*/  PCD_EVENT_GFX ; 
 int POPT_EN_MCD_GFX ; 
 int PicoOpt ; 
 TYPE_2__* Pico_mcd ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 TYPE_1__ gfx ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int) ; 

void FUNC4(unsigned int cycles)
{
  int lines, lines_reg;
  int w;

  if (!(Pico_mcd->s68k_regs[0x58] & 0x80))
    return;

  w = (Pico_mcd->s68k_regs[0x62] << 8) | Pico_mcd->s68k_regs[0x63];
  lines = (Pico_mcd->s68k_regs[0x64] << 8) | Pico_mcd->s68k_regs[0x65];
  lines_reg = lines - gfx.y_step;

  if (lines_reg <= 0) {
    Pico_mcd->s68k_regs[0x58] = 0;
    Pico_mcd->s68k_regs[0x64] =
    Pico_mcd->s68k_regs[0x65] = 0;

    if (Pico_mcd->s68k_regs[0x33] & PCDS_IEN1) {
      FUNC1(EL_INTS|EL_CD, "s68k: gfx_cd irq 1");
      FUNC0(1);
    }
  }
  else {
    Pico_mcd->s68k_regs[0x64] = lines_reg >> 8;
    Pico_mcd->s68k_regs[0x65] = lines_reg;

    if (lines > gfx.y_step)
      lines = gfx.y_step;

    FUNC3(cycles, PCD_EVENT_GFX, 5 * w * lines);
  }

  if (PicoOpt & POPT_EN_MCD_GFX)
  {
    /* render lines */
    while (lines--)
    {
      /* process dots to image buffer */
      FUNC2(gfx.bufferStart, w);

      /* increment image buffer start index for next line (8 pixels/line) */
      gfx.bufferStart += 8;
    }
  }
}