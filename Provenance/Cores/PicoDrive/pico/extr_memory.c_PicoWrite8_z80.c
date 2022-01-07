
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {int z80Run; int z80_bank68k; scalar_t__ z80_reset; } ;
struct TYPE_4__ {TYPE_1__ m; scalar_t__* zram; } ;


 int EL_ANOMALY ;
 int EL_UIO ;
 int EL_Z80BNK ;
 int POPT_EN_FM ;
 int POPT_EN_PSG ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int SN76496Write (int) ;
 int SekCyclesBurnRun (int) ;
 int SekPc ;
 int elprintf (int,char*,int,...) ;
 int emustatus ;
 int ym2612_write_local (int,int,int ) ;

__attribute__((used)) static void PicoWrite8_z80(u32 a, u32 d)
{
  if ((Pico.m.z80Run & 1) || Pico.m.z80_reset) {

    elprintf(EL_ANOMALY, "68k z80 write with no bus or reset! [%06x] %02x @ %06x", a, d&0xff, SekPc);
    return;
  }

  if ((a & 0x4000) == 0x0000) {
    SekCyclesBurnRun(2);
    Pico.zram[a & 0x1fff] = (u8)d;
    return;
  }
  if ((a & 0x6000) == 0x4000) {
    if (PicoOpt & POPT_EN_FM)
      emustatus |= ym2612_write_local(a&3, d&0xff, 0)&1;
    return;
  }

  if ((a & 0x7ff9) == 0x7f11) {
    if (PicoOpt & POPT_EN_PSG)
      SN76496Write(d);
    return;
  }
  if ((a & 0x7f00) == 0x6000)
  {
    Pico.m.z80_bank68k >>= 1;
    Pico.m.z80_bank68k |= d << 8;
    Pico.m.z80_bank68k &= 0x1ff;
    elprintf(EL_Z80BNK, "z80 bank=%06x", Pico.m.z80_bank68k << 15);
    return;
  }
  elprintf(EL_UIO|EL_ANOMALY, "68k bad write [%06x] %02x @ %06x", a, d&0xff, SekPc);
}
