
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int z80Run; scalar_t__ z80_reset; } ;
struct TYPE_4__ {int* zram; TYPE_1__ m; } ;


 int EL_ANOMALY ;
 int EL_UIO ;
 TYPE_2__ Pico ;
 int SekPc ;
 int elprintf (int,char*,int,int ) ;
 int ym2612_read_local_68k () ;

__attribute__((used)) static u32 PicoRead8_z80(u32 a)
{
  u32 d = 0xff;
  if ((Pico.m.z80Run & 1) || Pico.m.z80_reset) {
    elprintf(EL_ANOMALY, "68k z80 read with no bus! [%06x] @ %06x", a, SekPc);

    return 0;
  }

  if ((a & 0x4000) == 0x0000)
    d = Pico.zram[a & 0x1fff];
  else if ((a & 0x6000) == 0x4000)
    d = ym2612_read_local_68k();
  else
    elprintf(EL_UIO|EL_ANOMALY, "68k bad read [%06x] @%06x", a, SekPc);
  return d;
}
