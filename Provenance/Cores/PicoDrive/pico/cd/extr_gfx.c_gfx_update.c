
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {int y_step; int bufferStart; } ;


 int EL_CD ;
 int EL_INTS ;
 int PCDS_IEN1 ;
 int PCD_EVENT_GFX ;
 int POPT_EN_MCD_GFX ;
 int PicoOpt ;
 TYPE_2__* Pico_mcd ;
 int SekInterruptS68k (int) ;
 int elprintf (int,char*) ;
 TYPE_1__ gfx ;
 int gfx_render (int,int) ;
 int pcd_event_schedule (unsigned int,int ,int) ;

void gfx_update(unsigned int cycles)
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
      elprintf(EL_INTS|EL_CD, "s68k: gfx_cd irq 1");
      SekInterruptS68k(1);
    }
  }
  else {
    Pico_mcd->s68k_regs[0x64] = lines_reg >> 8;
    Pico_mcd->s68k_regs[0x65] = lines_reg;

    if (lines > gfx.y_step)
      lines = gfx.y_step;

    pcd_event_schedule(cycles, PCD_EVENT_GFX, 5 * w * lines);
  }

  if (PicoOpt & POPT_EN_MCD_GFX)
  {

    while (lines--)
    {

      gfx_render(gfx.bufferStart, w);


      gfx.bufferStart += 8;
    }
  }
}
