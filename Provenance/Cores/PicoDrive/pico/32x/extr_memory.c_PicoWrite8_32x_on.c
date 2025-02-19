
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int* regs; int dirty_pal; } ;
struct TYPE_3__ {scalar_t__ pal; } ;


 int EL_32X ;
 int EL_ANOMALY ;
 int EL_UIO ;
 int P32XS_FM ;
 int PAHW_MCD ;
 TYPE_2__ Pico32x ;
 TYPE_1__* Pico32xMem ;
 int PicoAHW ;
 int PicoWrite8_io (int,int) ;
 int PicoWrite8_mcd_io (int,int) ;
 int SekPc ;
 int bank_switch (int) ;
 int elprintf (int,char*,int,int,int ) ;
 int p32x_reg_write8 (int,int) ;
 int p32x_vdp_write8 (int,int) ;

__attribute__((used)) static void PicoWrite8_32x_on(u32 a, u32 d)
{
  if ((a & 0xfc00) == 0x5000)
    elprintf(EL_32X, "m68k 32x w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);

  if ((a & 0xffc0) == 0x5100) {
    p32x_reg_write8(a, d);
    return;
  }

  if ((a & 0xfc00) != 0x5000) {
    if (PicoAHW & PAHW_MCD)
      PicoWrite8_mcd_io(a, d);
    else
      PicoWrite8_io(a, d);
    if (a == 0xa130f1)
      bank_switch(Pico32x.regs[4 / 2]);
    return;
  }

  if (!(Pico32x.regs[0] & P32XS_FM)) {
    if ((a & 0xfff0) == 0x5180) {
      p32x_vdp_write8(a, d);
      return;
    }


    if ((a & 0xfe00) == 0x5200) {
      elprintf(EL_32X|EL_ANOMALY, "m68k 32x PAL w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
      ((u8 *)Pico32xMem->pal)[(a & 0x1ff) ^ 1] = d;
      Pico32x.dirty_pal = 1;
      return;
    }
  }

  elprintf(EL_UIO, "m68k unmapped w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
}
