
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_8__ {int dotMask; int stampShift; int mapShift; int bufferOffset; int bufferStart; int cycles; int cyclesPerLine; int * mapPtr; int * tracePtr; } ;
struct TYPE_7__ {TYPE_2__* regs; scalar_t__ word_ram_2M; } ;
struct TYPE_5__ {int l; int h; } ;
struct TYPE_6__ {int w; TYPE_1__ byte; } ;


 TYPE_4__ gfx ;
 TYPE_3__ scd ;

void gfx_start(unsigned int base, int cycles)
{

  if (!(scd.regs[0x02>>1].byte.l & 0x04))
  {
    uint32 mask;


    gfx.tracePtr = (uint16 *)(scd.word_ram_2M + ((base << 2) & 0x3fff8));


    switch ((scd.regs[0x58>>1].byte.l >> 1) & 0x03)
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


    gfx.mapPtr = (uint16 *)(scd.word_ram_2M + ((scd.regs[0x5a>>1].w << 2) & mask));


    gfx.bufferOffset = (((scd.regs[0x5c>>1].byte.l & 0x1f) + 1) << 6) - 7;


    gfx.bufferStart = (scd.regs[0x5e>>1].w << 3) & 0x7ffc0;


    gfx.bufferStart += (scd.regs[0x60>>1].byte.l & 0x3f);


    gfx.cycles = cycles;


    gfx.cyclesPerLine = 4 * 5 * scd.regs[0x62>>1].w;


    scd.regs[0x58>>1].byte.h = 0x80;
  }
}
