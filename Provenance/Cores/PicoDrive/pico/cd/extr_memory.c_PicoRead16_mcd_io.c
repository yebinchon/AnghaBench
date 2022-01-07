
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_CDREGS ;
 int PicoRead16_io (int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_reg_read16 (int) ;

u32 PicoRead16_mcd_io(u32 a)
{
  u32 d;
  if ((a & 0xff00) == 0x2000) {
    d = m68k_reg_read16(a);
    elprintf(EL_CDREGS, "m68k_regs r16: [%02x] %04x @%06x",
      a & 0x3f, d, SekPc);
    return d;
  }

  return PicoRead16_io(a);
}
