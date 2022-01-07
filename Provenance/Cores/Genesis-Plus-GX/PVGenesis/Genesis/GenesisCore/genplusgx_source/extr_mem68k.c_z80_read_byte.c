
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 unsigned int fm_read (int ,unsigned int) ;
 TYPE_1__ m68k ;
 unsigned int m68k_lockup_r_8 (unsigned int) ;
 int m68k_read_bus_8 (unsigned int) ;
 unsigned int* zram ;

unsigned int z80_read_byte(unsigned int address)
{
  switch ((address >> 13) & 3)
  {
    case 2:
    {
      return fm_read(m68k.cycles, address & 3);
    }

    case 3:
    {

      if ((address & 0xFF00) == 0x7F00)
      {
        return m68k_lockup_r_8(address);
      }
      return (m68k_read_bus_8(address) | 0xFF);
    }

    default:
    {
      return zram[address & 0x1FFF];
    }
  }
}
