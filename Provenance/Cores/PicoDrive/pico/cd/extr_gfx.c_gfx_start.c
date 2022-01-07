
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int* s68k_regs; scalar_t__ word_ram2M; } ;
struct TYPE_3__ {int dotMask; int stampShift; int mapShift; int bufferOffset; int bufferStart; int * mapPtr; int * tracePtr; } ;


 TYPE_2__* Pico_mcd ;
 TYPE_1__ gfx ;
 int gfx_schedule () ;

void gfx_start(unsigned int base)
{

  if (!(Pico_mcd->s68k_regs[3] & 0x04))
  {
    uint32 mask = 0;
    uint32 reg;


    gfx.tracePtr = (uint16 *)(Pico_mcd->word_ram2M + ((base << 2) & 0x3fff8));


    switch ((Pico_mcd->s68k_regs[0x58+1] >> 1) & 0x03)
    {
      case 0:
        gfx.dotMask = 0x07ffff;
        gfx.stampShift = 11 + 4;
        gfx.mapShift = 4;
        mask = 0x3fe00;
        break;

      case 1:
        gfx.dotMask = 0x07ffff;
        gfx.stampShift = 11 + 5;
        gfx.mapShift = 3;
        mask = 0x3ff80;
        break;

      case 2:
        gfx.dotMask = 0x7fffff;
        gfx.stampShift = 11 + 4;
        gfx.mapShift = 8;
        mask = 0x20000;
        break;

      case 3:
        gfx.dotMask = 0x7fffff;
        gfx.stampShift = 11 + 5;
        gfx.mapShift = 7;
        mask = 0x38000;
        break;
    }


    reg = (Pico_mcd->s68k_regs[0x5a] << 8) | Pico_mcd->s68k_regs[0x5b];
    gfx.mapPtr = (uint16 *)(Pico_mcd->word_ram2M + ((reg << 2) & mask));


    gfx.bufferOffset = (((Pico_mcd->s68k_regs[0x5c+1] & 0x1f) + 1) << 6) - 7;


    reg = (Pico_mcd->s68k_regs[0x5e] << 8) | Pico_mcd->s68k_regs[0x5f];
    gfx.bufferStart = (reg << 3) & 0x7ffc0;


    gfx.bufferStart += (Pico_mcd->s68k_regs[0x60+1] & 0x3f);
    Pico_mcd->s68k_regs[0x58] = 0x80;

    gfx_schedule();
  }
}
