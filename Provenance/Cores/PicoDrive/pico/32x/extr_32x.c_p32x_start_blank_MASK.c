#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* reg; } ;
struct TYPE_6__ {TYPE_1__ video; } ;
struct TYPE_5__ {int* vdp_regs; int pending_fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  P32XI_VINT ; 
 int P32XV_FS ; 
 int P32XV_Mx ; 
 int P32XV_PEN ; 
 int P32XV_VBLK ; 
 scalar_t__ PDM32X_32X_ONLY ; 
 scalar_t__ PDM32X_OFF ; 
 int PDRAW_32X_ON ; 
 int POPT_ALT_RENDERER ; 
 TYPE_3__ Pico ; 
 TYPE_2__ Pico32x ; 
 scalar_t__ Pico32xDrawMode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int PicoDrawMask ; 
 int PicoOpt ; 
 int /*<<< orphan*/  PicoSkipFrame ; 
 int /*<<< orphan*/  SH2_STATE_VPOLL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  draw ; 
 int /*<<< orphan*/  msh2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssh2 ; 

__attribute__((used)) static void FUNC8(void)
{
  if (Pico32xDrawMode != PDM32X_OFF && !PicoSkipFrame) {
    int offs, lines;

    FUNC7(draw);

    offs = 8; lines = 224;
    if ((Pico.video.reg[1] & 8) && !(PicoOpt & POPT_ALT_RENDERER)) {
      offs = 0;
      lines = 240;
    }

    // XXX: no proper handling of 32col mode..
    if ((Pico32x.vdp_regs[0] & P32XV_Mx) != 0 && // 32x not blanking
        (Pico.video.reg[12] & 1) && // 40col mode
        (PicoDrawMask & PDRAW_32X_ON))
    {
      int md_bg = Pico.video.reg[7] & 0x3f;

      // we draw full layer (not line-by-line)
      FUNC1(offs, lines, md_bg);
    }
    else if (Pico32xDrawMode != PDM32X_32X_ONLY)
      FUNC2(offs, lines);

    FUNC6(draw);
  }

  // enter vblank
  Pico32x.vdp_regs[0x0a/2] |= P32XV_VBLK|P32XV_PEN;

  // FB swap waits until vblank
  if ((Pico32x.vdp_regs[0x0a/2] ^ Pico32x.pending_fb) & P32XV_FS) {
    Pico32x.vdp_regs[0x0a/2] &= ~P32XV_FS;
    Pico32x.vdp_regs[0x0a/2] |= Pico32x.pending_fb;
    FUNC0(Pico32x.pending_fb ^ 1);
  }

  FUNC5(NULL, FUNC3(), P32XI_VINT);
  FUNC4(&msh2, SH2_STATE_VPOLL, 0);
  FUNC4(&ssh2, SH2_STATE_VPOLL, 0);
}