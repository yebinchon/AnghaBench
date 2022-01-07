
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void PicoWrite8_pico(u32 a, u32 d)
{
  switch (a & ~0x800000) {
    case 0x19: case 0x1b: case 0x1d: case 0x1f: break;
    default:
      elprintf(EL_UIO, "m68k unmapped w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
      break;
  }
}
