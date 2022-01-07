
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_ANOMALY ;
 int EL_UIO ;
 int POPT_EN_PSG ;
 int PicoOpt ;
 int PicoVideoWrite (int,int) ;
 int SN76496Write (int) ;
 int SekPc ;
 int elprintf (int,char*,int,int,int ) ;

__attribute__((used)) static void PicoWrite8_vdp(u32 a, u32 d)
{
  if ((a & 0x00f9) == 0x0011) {
    if (PicoOpt & POPT_EN_PSG)
      SN76496Write(d);
    return;
  }
  if ((a & 0x00e0) == 0x0000) {
    d &= 0xff;
    PicoVideoWrite(a, d | (d << 8));
    return;
  }

  elprintf(EL_UIO|EL_ANOMALY, "68k bad write [%06x] %02x @%06x", a, d & 0xff, SekPc);
}
