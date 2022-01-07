
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int sram_reg; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ end; scalar_t__ start; int flags; scalar_t__ data; int changed; } ;


 int EEPROM_write16 (scalar_t__) ;
 int EL_SRAMIO ;
 TYPE_3__ Pico ;
 int SRF_EEPROM ;
 int SRR_MAPPED ;
 TYPE_2__ SRam ;
 int SekPc ;
 int elprintf (int ,char*,scalar_t__,scalar_t__,int ) ;
 int m68k_unmapped_write16 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void PicoWrite16_sram(u32 a, u32 d)
{
  if (a > SRam.end || a < SRam.start || !(Pico.m.sram_reg & SRR_MAPPED)) {
    m68k_unmapped_write16(a, d);
    return;
  }

  elprintf(EL_SRAMIO, "sram w16 [%06x] %04x @ %06x", a, d & 0xffff, SekPc);
  if (SRam.flags & SRF_EEPROM)
  {
    EEPROM_write16(d);
  }
  else {

    u8 *pm = (u8 *)(SRam.data - SRam.start + a);
    if (*pm != (u8)d) {
      SRam.changed = 1;
      *pm = (u8)d;
    }
  }
}
