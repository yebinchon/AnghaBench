
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* pal; } ;


 int EL_32X ;
 int EL_UIO ;
 int PAHW_MCD ;
 TYPE_1__* Pico32xMem ;
 int PicoAHW ;
 int PicoRead16_io (int) ;
 int PicoRead16_mcd_io (int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int,...) ;
 int p32x_reg_read16 (int) ;
 int p32x_vdp_read16 (int) ;

__attribute__((used)) static u32 PicoRead16_32x_on(u32 a)
{
  u32 d = 0;
  if ((a & 0xffc0) == 0x5100) {
    d = p32x_reg_read16(a);
    goto out;
  }

  if ((a & 0xfc00) != 0x5000) {
    if (PicoAHW & PAHW_MCD)
      return PicoRead16_mcd_io(a);
    else
      return PicoRead16_io(a);
  }

  if ((a & 0xfff0) == 0x5180) {
    d = p32x_vdp_read16(a);
    goto out;
  }

  if ((a & 0xfe00) == 0x5200) {
    d = Pico32xMem->pal[(a & 0x1ff) / 2];
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
