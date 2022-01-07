
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* regs; } ;


 int EL_UIO ;
 int P32XS_ADEN ;
 int P32XS_nRES ;
 TYPE_1__ Pico32x ;
 int Pico32xStartup () ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int p32x_reg_write16 (int,int) ;

void PicoWrite16_32x(u32 a, u32 d)
{
  if ((a & 0xffc0) == 0x5100) {
    u16 *r = Pico32x.regs;

    elprintf(EL_UIO, "m68k 32x w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);
    a &= 0x3e;
    if (a == 0) {
      if ((d ^ r[0]) & d & P32XS_ADEN) {
        Pico32xStartup();
        r[0] &= ~P32XS_nRES;
        r[0] |= P32XS_ADEN;
        p32x_reg_write16(a, d);
      }
      return;
    }


    if ((a & 0x30) == 0x20)
      r[a / 2] = d;
    return;
  }

  elprintf(EL_UIO, "m68k unmapped w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);
}
