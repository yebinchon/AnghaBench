
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SekCyclesDone () ;
 int cycles_68k_to_z80 (scalar_t__) ;
 scalar_t__ last_z80_sync ;
 int z80_cycle_aim ;

__attribute__((used)) static int z80_cycles_from_68k(void)
{
  return z80_cycle_aim
    + cycles_68k_to_z80(SekCyclesDone() - last_z80_sync);
}
