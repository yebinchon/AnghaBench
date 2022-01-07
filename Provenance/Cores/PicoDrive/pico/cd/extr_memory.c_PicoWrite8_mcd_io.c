
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_CDREGS ;
 int PicoWrite8_io (int,int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_reg_write8 (int,int) ;

void PicoWrite8_mcd_io(u32 a, u32 d)
{
  if ((a & 0xff00) == 0x2000) {
    elprintf(EL_CDREGS, "m68k_regs w8:  [%02x]   %02x @%06x",
      a & 0x3f, d, SekPc);
    m68k_reg_write8(a, d);
    return;
  }

  PicoWrite8_io(a, d);
}
