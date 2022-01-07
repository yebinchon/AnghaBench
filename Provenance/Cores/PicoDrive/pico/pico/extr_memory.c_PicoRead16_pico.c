
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fifo_bytes; } ;


 int EL_UIO ;
 TYPE_1__ PicoPicohw ;
 int SekPc ;
 int elprintf (int ,char*,int,int ) ;

__attribute__((used)) static u32 PicoRead16_pico(u32 a)
{
  u32 d = 0;

  if (a == 0x800010)
    d = (PicoPicohw.fifo_bytes > 0x3f) ? 0 : (0x3f - PicoPicohw.fifo_bytes);
  else if (a == 0x800012)
    d = PicoPicohw.fifo_bytes == 0 ? 0x8000 : 0;
  else
    elprintf(EL_UIO, "m68k unmapped r16 [%06x] @%06x", a, SekPc);

  return d;
}
