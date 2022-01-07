
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int r1; int* pen_pos; int page; int fifo_bytes; } ;


 int EL_UIO ;
 int* PicoPad ;
 TYPE_1__ PicoPicohw ;
 int SekPc ;
 int elprintf (int ,char*,int,int ) ;

__attribute__((used)) static u32 PicoRead8_pico(u32 a)
{
  u32 d = 0;

  if ((a & 0xffffe0) == 0x800000)
  {
    switch (a & 0x1f)
    {
      case 0x01: d = PicoPicohw.r1; break;
      case 0x03:
        d = PicoPad[0]&0x1f;
        d |= (PicoPad[0]&0x20) << 2;
        d = ~d;
        break;

      case 0x05: d = (PicoPicohw.pen_pos[0] >> 8); break;
      case 0x07: d = PicoPicohw.pen_pos[0] & 0xff; break;
      case 0x09: d = (PicoPicohw.pen_pos[1] >> 8); break;
      case 0x0b: d = PicoPicohw.pen_pos[1] & 0xff; break;
      case 0x0d: d = (1 << (PicoPicohw.page & 7)) - 1; break;
      case 0x12: d = PicoPicohw.fifo_bytes == 0 ? 0x80 : 0; break;
      default:
        goto unhandled;
    }
    return d;
  }

unhandled:
  elprintf(EL_UIO, "m68k unmapped r8  [%06x] @%06x", a, SekPc);
  return d;
}
