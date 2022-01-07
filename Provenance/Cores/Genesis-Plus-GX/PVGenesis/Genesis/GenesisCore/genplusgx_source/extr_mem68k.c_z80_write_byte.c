
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 int fm_write (int,unsigned int,unsigned int) ;
 int gen_zbank_w (unsigned int) ;
 TYPE_1__ m68k ;
 int m68k_lockup_w_8 (unsigned int,unsigned int) ;
 int m68k_unused_8_w (unsigned int,unsigned int) ;
 unsigned int* zram ;

void z80_write_byte(unsigned int address, unsigned int data)
{
  switch ((address >> 13) & 3)
  {
    case 2:
    {
      fm_write(m68k.cycles, address & 3, data);
      return;
    }

    case 3:
    {
      switch ((address >> 8) & 0x7F)
      {
        case 0x60:
        {
          gen_zbank_w(data & 1);
          return;
        }

        case 0x7F:
        {
          m68k_lockup_w_8(address, data);
          return;
        }

        default:
        {
          m68k_unused_8_w(address, data);
          return;
        }
      }
    }

    default:
    {
      zram[address & 0x1FFF] = data;
      m68k.cycles += 8;
      return;
    }
  }
}
