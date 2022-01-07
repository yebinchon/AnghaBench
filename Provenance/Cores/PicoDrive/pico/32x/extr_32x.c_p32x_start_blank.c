
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* reg; } ;
struct TYPE_6__ {TYPE_1__ video; } ;
struct TYPE_5__ {int* vdp_regs; int pending_fb; } ;


 int P32XI_VINT ;
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
 int Pico32xSwapDRAM (int) ;
 int PicoDraw32xLayer (int,int,int) ;
 int PicoDraw32xLayerMdOnly (int,int) ;
 int PicoDrawMask ;
 int PicoOpt ;
 int PicoSkipFrame ;
 int SH2_STATE_VPOLL ;
 int SekCyclesDone () ;
 int draw ;
 int msh2 ;
 int p32x_sh2_poll_event (int *,int ,int ) ;
 int p32x_trigger_irq (int *,int ,int ) ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;
 int ssh2 ;

__attribute__((used)) static void p32x_start_blank(void)
{
  if (Pico32xDrawMode != PDM32X_OFF && !PicoSkipFrame) {
    int offs, lines;

    pprof_start(draw);

    offs = 8; lines = 224;
    if ((Pico.video.reg[1] & 8) && !(PicoOpt & POPT_ALT_RENDERER)) {
      offs = 0;
      lines = 240;
    }


    if ((Pico32x.vdp_regs[0] & P32XV_Mx) != 0 &&
        (Pico.video.reg[12] & 1) &&
        (PicoDrawMask & PDRAW_32X_ON))
    {
      int md_bg = Pico.video.reg[7] & 0x3f;


      PicoDraw32xLayer(offs, lines, md_bg);
    }
    else if (Pico32xDrawMode != PDM32X_32X_ONLY)
      PicoDraw32xLayerMdOnly(offs, lines);

    pprof_end(draw);
  }


  Pico32x.vdp_regs[0x0a/2] |= P32XV_VBLK|P32XV_PEN;


  if ((Pico32x.vdp_regs[0x0a/2] ^ Pico32x.pending_fb) & P32XV_FS) {
    Pico32x.vdp_regs[0x0a/2] &= ~P32XV_FS;
    Pico32x.vdp_regs[0x0a/2] |= Pico32x.pending_fb;
    Pico32xSwapDRAM(Pico32x.pending_fb ^ 1);
  }

  p32x_trigger_irq(((void*)0), SekCyclesDone(), P32XI_VINT);
  p32x_sh2_poll_event(&msh2, SH2_STATE_VPOLL, 0);
  p32x_sh2_poll_event(&ssh2, SH2_STATE_VPOLL, 0);
}
