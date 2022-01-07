
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EL_ANOMALY ;
 scalar_t__ PicoReadM68k8_ramc (scalar_t__) ;
 int SekPcS68k ;
 int elprintf (int ,char*,scalar_t__,int ) ;

__attribute__((used)) static u32 PicoReadM68k16_ramc(u32 a)
{
  elprintf(EL_ANOMALY, "ramcart r16: [%06x] @%06x", a, SekPcS68k);
  return PicoReadM68k8_ramc(a + 1);
}
