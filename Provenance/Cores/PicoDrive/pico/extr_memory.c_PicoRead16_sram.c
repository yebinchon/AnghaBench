
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int sram_reg; } ;
struct TYPE_6__ {scalar_t__ romsize; scalar_t__ rom; TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; int flags; scalar_t__ data; } ;


 scalar_t__ EEPROM_read () ;
 int EL_SRAMIO ;
 TYPE_3__ Pico ;
 int SRF_EEPROM ;
 int SRR_MAPPED ;
 TYPE_2__ SRam ;
 int SekPc ;
 int elprintf (int ,char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ m68k_unmapped_read16 (scalar_t__) ;

__attribute__((used)) static u32 PicoRead16_sram(u32 a)
{
  u32 d;
  if (SRam.start <= a && a <= SRam.end && (Pico.m.sram_reg & SRR_MAPPED))
  {
    if (SRam.flags & SRF_EEPROM)
      d = EEPROM_read();
    else {
      u8 *pm = (u8 *)(SRam.data - SRam.start + a);
      d = pm[0] << 8;
      d |= pm[1];
    }
    elprintf(EL_SRAMIO, "sram r16 [%06x] %04x @ %06x", a, d, SekPc);
    return d;
  }

  if (a < Pico.romsize)
    return *(u16 *)(Pico.rom + a);

  return m68k_unmapped_read16(a);
}
