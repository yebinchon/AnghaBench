
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
 int PicoRead8_io (int) ;
 int PicoRead8_mcd_io (int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int,...) ;
 int p32x_reg_read16 (int) ;
 int p32x_vdp_read16 (int) ;
 int* str_mars ;

__attribute__((used)) static u32 PicoRead8_32x_on(u32 a)
{
  u32 d = 0;
  if ((a & 0xffc0) == 0x5100) {
    d = p32x_reg_read16(a);
    goto out_16to8;
  }

  if ((a & 0xfc00) != 0x5000) {
    if (PicoAHW & PAHW_MCD)
      return PicoRead8_mcd_io(a);
    else
      return PicoRead8_io(a);
  }

  if ((a & 0xfff0) == 0x5180) {
    d = p32x_vdp_read16(a);
    goto out_16to8;
  }

  if ((a & 0xfe00) == 0x5200) {
    d = Pico32xMem->pal[(a & 0x1ff) / 2];
    goto out_16to8;
  }

  if ((a & 0xfffc) == 0x30ec) {
    d = str_mars[a & 3];
    goto out;
  }

  elprintf(EL_UIO, "m68k unmapped r8  [%06x] @%06x", a, SekPc);
  return d;

out_16to8:
  if (a & 1)
    d &= 0xff;
  else
    d >>= 8;

out:
  elprintf(EL_32X, "m68k 32x r8  [%06x]   %02x @%06x", a, d, SekPc);
  return d;
}
