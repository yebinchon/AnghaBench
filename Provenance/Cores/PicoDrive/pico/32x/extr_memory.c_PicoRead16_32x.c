
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* regs; } ;


 int EL_32X ;
 int EL_UIO ;
 TYPE_1__ Pico32x ;
 int SekPc ;
 int elprintf (int ,char*,int,int,...) ;

u32 PicoRead16_32x(u32 a)
{
  u32 d = 0;
  if ((a & 0xffc0) == 0x5100) {
    d = Pico32x.regs[(a & 0x3f) / 2];
    goto out;
  }

  if ((a & 0xfffc) == 0x30ec) {
    d = !(a & 2) ? ('M'<<8)|'A' : ('R'<<8)|'S';
    goto out;
  }

  elprintf(EL_UIO, "m68k unmapped r16 [%06x] @%06x", a, SekPc);
  return d;

out:
  elprintf(EL_32X, "m68k 32x r16 [%06x] %04x @%06x", a, d, SekPc);
  return d;
}
