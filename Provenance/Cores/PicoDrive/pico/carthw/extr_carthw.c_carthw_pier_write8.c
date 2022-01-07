
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int romsize; scalar_t__ rom; } ;


 int EL_ANOMALY ;
 int EL_STATUS ;
 int EL_UIO ;
 TYPE_1__ Pico ;
 int PicoWrite8_io (int,int) ;
 int SekPc ;
 int cpu68k_map_set (int ,int,int,scalar_t__,int ) ;
 int elprintf (int,char*,int,...) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int* pier_regs ;

__attribute__((used)) static void carthw_pier_write8(u32 a, u32 d)
{
  u32 a8, target, base;

  if ((a & 0xffff00) != 0xa13000) {
    PicoWrite8_io(a, d);
    return;
  }

  a8 = a & 0x0f;
  pier_regs[a8 / 2] = d;

      elprintf(EL_UIO, "pier w8  [%06x] %02x @%06x", a, d & 0xffff, SekPc);
  switch (a8) {
    case 0x01:
      break;
    case 0x03:
      if (!(pier_regs[0] & 2))
        goto unmapped;
      target = 0x280000;
      base = d << 19;
      goto do_map;
    case 0x05:
      if (!(pier_regs[0] & 2))
        goto unmapped;
      target = 0x300000;
      base = d << 19;
      goto do_map;
    case 0x07:
      if (!(pier_regs[0] & 2))
        goto unmapped;
      target = 0x380000;
      base = d << 19;
      goto do_map;
    case 0x09:

      break;
    case 0x0b:

    default:
    unmapped:

      elprintf(EL_STATUS, "-- unmapped w8 [%06x] %02x @%06x", a, d & 0xffff, SekPc);
      break;
  }
  return;

do_map:
  if (base + 0x80000 > Pico.romsize) {
    elprintf(EL_ANOMALY|EL_STATUS, "pier: missing bank @ %06x", base);
    return;
  }
  cpu68k_map_set(m68k_read8_map, target, target + 0x80000 - 1, Pico.rom + base, 0);
  cpu68k_map_set(m68k_read16_map, target, target + 0x80000 - 1, Pico.rom + base, 0);
}
