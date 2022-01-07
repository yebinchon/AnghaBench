
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* regs; } ;


 int EL_32X ;
 int EL_UIO ;
 int P32XS_ADEN ;
 int P32XS_nRES ;
 TYPE_1__ Pico32x ;
 int Pico32xStartup () ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int p32x_reg_write8 (int,int) ;

void PicoWrite8_32x(u32 a, u32 d)
{
  if ((a & 0xffc0) == 0x5100) {
    u16 *r = Pico32x.regs;

    elprintf(EL_32X, "m68k 32x w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
    a &= 0x3f;
    if (a == 1) {
      if ((d ^ r[0]) & d & P32XS_ADEN) {
        Pico32xStartup();
        r[0] &= ~P32XS_nRES;
        r[0] |= P32XS_ADEN;
        p32x_reg_write8(a, d);
      }
      return;
    }


    if ((a & 0x30) == 0x20) {
      u8 *r8 = (u8 *)r;
      r8[a ^ 1] = d;
    }
    return;
  }

  elprintf(EL_UIO, "m68k unmapped w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
}
