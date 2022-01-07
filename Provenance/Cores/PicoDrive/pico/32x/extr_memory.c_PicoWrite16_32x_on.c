
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* regs; int dirty_pal; } ;
struct TYPE_3__ {int* pal; } ;


 int EL_32X ;
 int EL_UIO ;
 int P32XS_FM ;
 int PAHW_MCD ;
 TYPE_2__ Pico32x ;
 TYPE_1__* Pico32xMem ;
 int PicoAHW ;
 int PicoWrite16_io (int,int) ;
 int PicoWrite16_mcd_io (int,int) ;
 int SekPc ;
 int bank_switch (int) ;
 int elprintf (int ,char*,int,int,int ) ;
 int p32x_reg_write16 (int,int) ;
 int p32x_vdp_write16 (int,int,int *) ;

__attribute__((used)) static void PicoWrite16_32x_on(u32 a, u32 d)
{
  if ((a & 0xfc00) == 0x5000)
    elprintf(EL_32X, "m68k 32x w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);

  if ((a & 0xffc0) == 0x5100) {
    p32x_reg_write16(a, d);
    return;
  }

  if ((a & 0xfc00) != 0x5000) {
    if (PicoAHW & PAHW_MCD)
      PicoWrite16_mcd_io(a, d);
    else
      PicoWrite16_io(a, d);
    if (a == 0xa130f0)
      bank_switch(Pico32x.regs[4 / 2]);
    return;
  }

  if (!(Pico32x.regs[0] & P32XS_FM)) {
    if ((a & 0xfff0) == 0x5180) {
      p32x_vdp_write16(a, d, ((void*)0));
      return;
    }

    if ((a & 0xfe00) == 0x5200) {
      Pico32xMem->pal[(a & 0x1ff) / 2] = d;
      Pico32x.dirty_pal = 1;
      return;
    }
  }

  elprintf(EL_UIO, "m68k unmapped w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);
}
