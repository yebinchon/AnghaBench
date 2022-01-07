
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int cycles; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int write16; int write8; int read16; int read8; } ;


 TYPE_3__ Z80 ;
 int fm_reset (unsigned int) ;
 TYPE_2__ m68k ;
 int m68k_read_bus_16 ;
 int m68k_read_bus_8 ;
 int m68k_unused_16_w ;
 int m68k_unused_8_w ;
 int z80_read_byte ;
 int z80_read_word ;
 int z80_reset () ;
 int z80_run (unsigned int) ;
 int z80_write_byte ;
 int z80_write_word ;
 int zstate ;

void gen_zreset_w(unsigned int data, unsigned int cycles)
{
  if (data)
  {

    if (zstate == 0)
    {

      Z80.cycles = cycles;


      z80_reset();
      fm_reset(cycles);
    }


    else if (zstate == 2)
    {

      m68k.memory_map[0xa0].read8 = z80_read_byte;
      m68k.memory_map[0xa0].read16 = z80_read_word;
      m68k.memory_map[0xa0].write8 = z80_write_byte;
      m68k.memory_map[0xa0].write16 = z80_write_word;


      z80_reset();
      fm_reset(cycles);
    }


    zstate |= 1;
  }
  else
  {

    if (zstate == 1)
    {

      z80_run(cycles);
    }


    else if (zstate == 3)
    {

      m68k.memory_map[0xa0].read8 = m68k_read_bus_8;
      m68k.memory_map[0xa0].read16 = m68k_read_bus_16;
      m68k.memory_map[0xa0].write8 = m68k_unused_8_w;
      m68k.memory_map[0xa0].write16 = m68k_unused_16_w;
    }


    fm_reset(cycles);


    zstate &= 2;
  }
}
