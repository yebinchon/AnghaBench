
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int EL_32X ;
 int EL_UIO ;
 TYPE_1__ Pico32x ;
 int SekPc ;
 int elprintf (int ,char*,int,int,...) ;
 int* str_mars ;

u32 PicoRead8_32x(u32 a)
{
  u32 d = 0;
  if ((a & 0xffc0) == 0x5100) {

    d = ((u8 *)Pico32x.regs)[(a & 0x3f) ^ 1];
    goto out;
  }

  if ((a & 0xfffc) == 0x30ec) {
    d = str_mars[a & 3];
    goto out;
  }

  elprintf(EL_UIO, "m68k unmapped r8  [%06x] @%06x", a, SekPc);
  return d;

out:
  elprintf(EL_32X, "m68k 32x r8  [%06x]   %02x @%06x", a, d, SekPc);
  return d;
}
