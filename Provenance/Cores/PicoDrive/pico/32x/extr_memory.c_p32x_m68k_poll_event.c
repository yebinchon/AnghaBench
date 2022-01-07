
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int emu_flags; } ;
struct TYPE_3__ {scalar_t__ cnt; scalar_t__ addr; } ;


 int EL_32X ;
 TYPE_2__ Pico32x ;
 int SekSetStop (int ) ;
 int elprintf (int ,char*,int,int) ;
 TYPE_1__ m68k_poll ;

void p32x_m68k_poll_event(u32 flags)
{
  if (Pico32x.emu_flags & flags) {
    elprintf(EL_32X, "m68k poll %02x -> %02x", Pico32x.emu_flags,
      Pico32x.emu_flags & ~flags);
    Pico32x.emu_flags &= ~flags;
    SekSetStop(0);
  }
  m68k_poll.addr = m68k_poll.cnt = 0;
}
