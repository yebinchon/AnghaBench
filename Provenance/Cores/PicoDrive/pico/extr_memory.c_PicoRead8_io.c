
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int z80Run; int z80_reset; int rotate; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EL_BUSREQ ;
 int POPT_EN_32X ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int PicoRead8_32x (int) ;
 int SekCyclesDone () ;
 int SekPc ;
 int elprintf (int ,char*,int,int ,int ) ;
 int io_ports_read (int) ;
 int m68k_unmapped_read8 (int) ;

u32 PicoRead8_io(u32 a)
{
  u32 d;

  if ((a & 0xffe0) == 0x0000) {
    d = io_ports_read(a);
    goto end;
  }


  d = Pico.m.rotate++;
  d ^= d << 6;

  if ((a & 0xfc00) == 0x1000) {

    if (!(a & 1))
      d &= ~0x01;

    if ((a & 0xff01) == 0x1100) {
      d |= (Pico.m.z80Run | Pico.m.z80_reset) & 1;
      elprintf(EL_BUSREQ, "get_zrun: %02x [%i] @%06x", d, SekCyclesDone(), SekPc);
    }
    goto end;
  }

  if (PicoOpt & POPT_EN_32X) {
    d = PicoRead8_32x(a);
    goto end;
  }

  d = m68k_unmapped_read8(a);
end:
  return d;
}
