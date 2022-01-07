
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EL_ANOMALY ;
 int PicoWriteM68k8_ramc (scalar_t__,scalar_t__) ;
 int SekPcS68k ;
 int elprintf (int ,char*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void PicoWriteM68k16_ramc(u32 a, u32 d)
{
  elprintf(EL_ANOMALY, "ramcart w16: [%06x] %04x @%06x",
    a, d, SekPcS68k);
  PicoWriteM68k8_ramc(a + 1, d);
}
