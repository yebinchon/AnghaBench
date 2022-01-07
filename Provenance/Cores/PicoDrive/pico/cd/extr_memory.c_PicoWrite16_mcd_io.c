
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_CDREGS ;
 int PicoWrite16_io (int,int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_reg_write8 (int,int) ;

void PicoWrite16_mcd_io(u32 a, u32 d)
{
  if ((a & 0xff00) == 0x2000) {
    elprintf(EL_CDREGS, "m68k_regs w16: [%02x] %04x @%06x",
      a & 0x3f, d, SekPc);

    m68k_reg_write8(a, d >> 8);
    if ((a & 0x3e) != 0x0e)
      m68k_reg_write8(a + 1, d & 0xff);
    return;
  }

  PicoWrite16_io(a, d);
}
