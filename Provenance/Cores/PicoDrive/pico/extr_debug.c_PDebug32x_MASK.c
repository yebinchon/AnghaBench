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
struct TYPE_2__ {unsigned short* regs; unsigned short* sh2_regs; int sh2irqs; int emu_flags; unsigned short* vdp_regs; int* sh2irqi; int* sh2irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVP ; 
 TYPE_1__ Pico32x ; 
 char* dstr ; 
 int /*<<< orphan*/  msh2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  ssh2 ; 

char *FUNC6(void)
{
#ifndef NO_32X
  char *dstrp = dstr;
  unsigned short *r;
  int i;

  r = Pico32x.regs;
  FUNC5(dstrp, "regs:\n"); MVP;
  for (i = 0; i < 0x40/2; i += 8) {
    FUNC5(dstrp, "%02x: %04x %04x %04x %04x %04x %04x %04x %04x\n",
      i*2, r[i+0], r[i+1], r[i+2], r[i+3], r[i+4], r[i+5], r[i+6], r[i+7]); MVP;
  }
  r = Pico32x.sh2_regs;
  FUNC5(dstrp, "SH: %04x %04x %04x      IRQs: %02x  eflags: %02x\n",
    r[0], r[1], r[2], Pico32x.sh2irqs, Pico32x.emu_flags); MVP;

  i = 0;
  r = Pico32x.vdp_regs;
  FUNC5(dstrp, "VDP regs:\n"); MVP;
  FUNC5(dstrp, "%02x: %04x %04x %04x %04x %04x %04x %04x %04x\n",
    i*2, r[i+0], r[i+1], r[i+2], r[i+3], r[i+4], r[i+5], r[i+6], r[i+7]); MVP;

  FUNC5(dstrp, "                   mSH2              sSH2\n"); MVP;
  FUNC5(dstrp, "PC,SR %08x,     %03x %08x,     %03x\n", FUNC1(&msh2), FUNC3(0), FUNC1(&ssh2), FUNC3(1)); MVP;
  for (i = 0; i < 16/2; i++) {
    FUNC5(dstrp, "R%d,%2d %08x,%08x %08x,%08x\n", i, i + 8,
      FUNC2(0,i), FUNC2(0,i+8), FUNC2(1,i), FUNC2(1,i+8)); MVP;
  }
  FUNC5(dstrp, "gb,vb %08x,%08x %08x,%08x\n", FUNC0(0), FUNC4(0), FUNC0(1), FUNC4(1)); MVP;
  FUNC5(dstrp, "IRQs/mask:        %02x/%02x             %02x/%02x\n",
    Pico32x.sh2irqi[0], Pico32x.sh2irq_mask[0], Pico32x.sh2irqi[1], Pico32x.sh2irq_mask[1]); MVP;
#else
  dstr[0] = 0;
#endif

  return dstr;
}