
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_CDREGS ;
 int PicoRead8_io (int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_reg_read16 (int) ;

u32 PicoRead8_mcd_io(u32 a)
{
  u32 d;
  if ((a & 0xff00) == 0x2000) {
    d = m68k_reg_read16(a);
    if (!(a & 1))
      d >>= 8;
    d &= 0xff;
    elprintf(EL_CDREGS, "m68k_regs r8:  [%02x]   %02x @%06x",
      a & 0x3f, d, SekPc);
    return d;
  }


  return PicoRead8_io(a);
}
