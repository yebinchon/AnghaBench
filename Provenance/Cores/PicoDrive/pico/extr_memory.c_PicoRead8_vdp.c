
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_ANOMALY ;
 int EL_UIO ;
 int PicoVideoRead8 (int) ;
 int SekPc ;
 int elprintf (int,char*,int,int ) ;

__attribute__((used)) static u32 PicoRead8_vdp(u32 a)
{
  if ((a & 0x00e0) == 0x0000)
    return PicoVideoRead8(a);

  elprintf(EL_UIO|EL_ANOMALY, "68k bad read [%06x] @%06x", a, SekPc);
  return 0;
}
